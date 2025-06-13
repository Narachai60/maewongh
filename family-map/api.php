<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// api.php - API สำหรับจัดการข้อมูลบ้าน
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    exit(0);
}

require_once 'config.php';

$database = new Database();
$db = $database->connect();

// ดึง HTTP Method และ Action
$method = $_SERVER['REQUEST_METHOD'];
$action = isset($_GET['action']) ? $_GET['action'] : '';

try {
    switch ($method) {
        case 'GET':
            handleGet($db, $action);
            break;
        case 'POST':
            handlePost($db, $action);
            break;
        // case 'PUT':
        //     handlePut($db, $action);
        //     break;
        case 'DELETE':
            handleDelete($db, $action);
            break;
        default:
            sendResponse(405, 'Method not allowed');
    }
} catch (Exception $e) {
    sendResponse(500, 'Server error: ' . $e->getMessage());
}

// GET Requests
function handleGet($db, $action)
{
    switch ($action) {
        case 'houses':
            getAllHouses($db);
            break;
        case 'house':
            $id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
            getHouse($db, $id);
            break;
        case 'search':
            $query = isset($_GET['q']) ? $_GET['q'] : '';
            searchHouses($db, $query);
            break;
        default:
            sendResponse(400, 'Invalid action');
    }
}

// POST Requests
function handlePost($db, $action)
{
    switch ($action) {
        case 'house':
            $data = getJsonInput();

            if (isset($data['update']) && !empty($data['id'])) {
                updateHouse($db, (int)$data['id'], $data); // ✅ ส่ง $data ไปด้วย
            } else {
                createHouse($db, $data); // ✅ ส่ง $data ไปด้วย
            }
            break;
        default:
            sendResponse(400, 'Invalid action');
    }
}


// PUT Requests
// function handlePut($db, $action) {
//     parse_str(parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY), $params);
//     $id = isset($params['id']) ? (int)$params['id'] : 0;

//     switch ($action) {
//         case 'house':
//             updateHouse($db, $id);
//             break;
//         default:
//             sendResponse(400, 'Invalid action');
//     }
// }


// DELETE Requests
function handleDelete($db, $action)
{
    switch ($action) {
        case 'house':
            $id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
            deleteHouse($db, $id);
            break;
        default:
            sendResponse(400, 'Invalid action');
    }
}

// ดึงข้อมูลบ้านทั้งหมด
function getAllHouses($db)
{
    $query = "
      SELECT 
  h.*, 
  JSON_ARRAYAGG(
    JSON_OBJECT(
      'id', fm.id,
      'name', fm.name,
      'age', fm.age,
      'relation', fm.relation,
      'disease', fm.disease,
      'status', fm.status,
      'gender', fm.gender
    )
  ) AS members
FROM houses h
LEFT JOIN family_members fm ON h.id = fm.house_id
GROUP BY h.id

    ";

    $stmt = $db->prepare($query);
    $stmt->execute();
    $houses = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($houses as &$house) {
        $house['members'] = json_decode($house['members'], true) ?? [];
        $house['lat'] = (float)$house['latitude'];
        $house['lon'] = (float)$house['longitude'];
        unset($house['latitude'], $house['longitude']);
    }

    sendResponse(200, 'Success', $houses);
}


// ดึงข้อมูลบ้านเดียว
function getHouse($db, $id)
{
    if ($id <= 0) {
        sendResponse(400, 'Invalid house ID');
    }

    $query = "SELECT * FROM houses WHERE id = :id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    $house = $stmt->fetch();

    if (!$house) {
        sendResponse(404, 'House not found');
    }

    // ดึงข้อมูลสมาชิก
    $memberQuery = "SELECT * FROM family_members WHERE house_id = :house_id ORDER BY id";
    $memberStmt = $db->prepare($memberQuery);
    $memberStmt->bindParam(':house_id', $id);
    $memberStmt->execute();
    $members = $memberStmt->fetchAll();

    $house['lat'] = (float)$house['latitude'];
    $house['lon'] = (float)$house['longitude'];
    $house['members'] = $members;
    unset($house['latitude'], $house['longitude']);

    sendResponse(200, 'Success', $house);
}

// สร้างบ้านใหม่
function createHouse($db, $data)
{
    $error = validateRequired($data, ['address', 'lat', 'lon', 'members']);
    if ($error) sendResponse(400, $error);

    if (!is_array($data['members']) || empty($data['members'])) {
        sendResponse(400, 'ต้องมีสมาชิกในบ้านอย่างน้อย 1 คน');
    }

    try {
        $db->beginTransaction();

        $query = "INSERT INTO houses (address, latitude, longitude) VALUES (:address, :lat, :lon)";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':address', $data['address']);
        $stmt->bindParam(':lat', $data['lat']);
        $stmt->bindParam(':lon', $data['lon']);
        $stmt->execute();

        $houseId = $db->lastInsertId();

        $memberQuery = "INSERT INTO family_members (house_id, name, age, relation, disease, gender, status)
                VALUES (:house_id, :name, :age, :relation, :disease, :gender, :status)";
        $memberStmt = $db->prepare($memberQuery);

        foreach ($data['members'] as $m) {
            if (empty(trim($m['name']))) continue;
            $memberStmt->execute([
                ':house_id' => $houseId,
                ':name'     => $m['name'],
                ':age'      => $m['age'],
                ':relation' => $m['relation'],
                ':gender'   => $m['gender'] ?? '',
                ':status'   => $m['status'] ?? '',
                ':disease'  => $m['disease'] ?? ''
            ]);
        }

        $db->commit();
        sendResponse(201, 'เพิ่มบ้านใหม่สำเร็จ', ['id' => $houseId]);
    } catch (Exception $e) {
        $db->rollBack();
        sendResponse(500, 'เกิดข้อผิดพลาด: ' . $e->getMessage());
    }
}


// อัปเดตข้อมูลบ้าน
function updateHouse($db, $id, $data)
{
    if ($id <= 0) sendResponse(400, 'Invalid house ID');

    $error = validateRequired($data, ['address', 'lat', 'lon', 'members']);
    if ($error) sendResponse(400, $error);

    $check = $db->prepare("SELECT id FROM houses WHERE id = :id");
    $check->execute([':id' => $id]);
    if ($check->rowCount() === 0) {
        sendResponse(404, 'House not found');
    }

    try {
        $db->beginTransaction();

        $stmt = $db->prepare("UPDATE houses SET address = :address, latitude = :lat, longitude = :lon WHERE id = :id");
        $stmt->execute([
            ':address' => $data['address'],
            ':lat'     => $data['lat'],
            ':lon'     => $data['lon'],
            ':id'      => $id
        ]);

        $db->prepare("DELETE FROM family_members WHERE house_id = :id")
            ->execute([':id' => $id]);

        $memberStmt = $db->prepare("INSERT INTO family_members (house_id, name, age, relation, disease, gender, status)
                VALUES (:house_id, :name, :age, :relation, :disease, :gender, :status)");

        foreach ($data['members'] as $m) {
            if (empty(trim($m['name']))) continue;
            $memberStmt->execute([
                ':house_id' => $id,
                ':name'     => $m['name'],
                ':age'      => $m['age'],
                ':relation' => $m['relation'],
                ':gender'   => $m['gender'] ?? '',
                ':status'   => $m['status'] ?? '',
                ':disease'  => $m['disease'] ?? ''
            ]);
        }

        $db->commit();
        sendResponse(200, 'แก้ไขบ้านเรียบร้อยแล้ว');
    } catch (Exception $e) {
        $db->rollBack();
        sendResponse(500, 'เกิดข้อผิดพลาด: ' . $e->getMessage());
    }
}





// ลบบ้าน
function deleteHouse($db, $id)
{
    if ($id <= 0) {
        sendResponse(400, 'Invalid house ID');
    }

    $query = "DELETE FROM houses WHERE id = :id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':id', $id);
    $stmt->execute();

    if ($stmt->rowCount() === 0) {
        sendResponse(404, 'House not found');
    }

    sendResponse(200, 'House deleted successfully');
}

// ค้นหาบ้าน
function searchHouses($db, $query)
{
    $searchTerm = '%' . $query . '%';

    $sql = "
        SELECT h.*, 
              CONCAT('[', GROUP_CONCAT(JSON_OBJECT(
                       'id', fm.id,
                       'name', fm.name,
                       'age', fm.age,
                       'relation', fm.relation,
                       'disease', fm.disease
                   ) SEPARATOR ','), ']') AS members
        FROM houses h
        LEFT JOIN family_members fm ON h.id = fm.house_id
        WHERE h.address LIKE :search OR fm.name LIKE :search
        GROUP BY h.id
        ORDER BY h.created_at DESC
    ";

    $stmt = $db->prepare($sql);
    $stmt->bindParam(':search', $searchTerm);
    $stmt->execute();
    $houses = $stmt->fetchAll();

    foreach ($houses as &$house) {
        if ($house['members']) {
            $members = explode('|||', $house['members']);
            $house['members'] = array_map(function ($m) {
                return json_decode($m, true);
            }, $members);
        } else {
            $house['members'] = [];
        }

        $house['lat'] = (float)$house['latitude'];
        $house['lon'] = (float)$house['longitude'];
        unset($house['latitude'], $house['longitude']);
    }

    sendResponse(200, 'Success', $houses);
}
