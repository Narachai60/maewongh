<?php
// config.php - การตั้งค่าฐานข้อมูล
define('DB_HOST', 'localhost');
define('DB_PORT', '3306'); // เพิ่มพอร์ตที่ต้องการใช้
define('DB_NAME', 'house_management');
define('DB_USER', 'maewong'); // เปลี่ยนเป็น username ของฐานข้อมูลคุณ
define('DB_PASS', 'M@ew0ngh11220');     // เปลี่ยนเป็น password ของฐานข้อมูลคุณ

class Database {
    private $host = DB_HOST;
    private $port = DB_PORT;
    private $db_name = DB_NAME;
    private $username = DB_USER;
    private $password = DB_PASS;
    private $conn;

    public function connect() {
        $this->conn = null;
        try {
            $this->conn = new PDO(
                "mysql:host={$this->host};port={$this->port};dbname={$this->db_name};charset=utf8mb4",
                $this->username,
                $this->password,
                [
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                    PDO::ATTR_EMULATE_PREPARES => false,
                ]
            );
       
        } catch(PDOException $e) {
            echo "Connection Error: " . $e->getMessage();
        }
        return $this->conn;
    }
}

// ฟังก์ชันสำหรับส่ง JSON Response
function sendResponse($status, $message, $data = null) {
    header('Content-Type: application/json; charset=utf-8');
    http_response_code($status);
    echo json_encode([
        'status' => $status,
        'message' => $message,
        'data' => $data
    ], JSON_UNESCAPED_UNICODE);
    exit;
}

// ฟังก์ชันสำหรับรับ JSON Input
function getJsonInput() {
    $input = file_get_contents('php://input');
    return json_decode($input, true);
}

// ฟังก์ชันสำหรับ Validate Input
function validateRequired($data, $fields) {
    foreach ($fields as $field) {
        if (!isset($data[$field])) {
            return "Field '{$field}' is required";
        }

        // ถ้าเป็น array (เช่น members) ให้เช็คว่าไม่ว่าง
        if (is_array($data[$field])) {
            if (empty($data[$field])) {
                return "Field '{$field}' must not be empty";
            }
        } else {
            // ถ้าเป็น string ให้ trim
            if (trim($data[$field]) === '') {
                return "Field '{$field}' is required";
            }
        }
    }
    return null;
}

?>
