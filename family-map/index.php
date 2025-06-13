<!DOCTYPE html>
<html lang="th">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ระบบจัดการข้อมูลบ้าน</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }

        .header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 20px;
            text-align: center;
            color: white;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }

        .header h1 {
            font-size: 2.5rem;
            font-weight: 300;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 1.1rem;
            color: #ddd;
            margin-top: 5px;
        }

        .container {
            display: flex;
            height: calc(100vh - 127px);
        }

        #map {
            flex: 1;
            height: calc(100vh - 127px);
            z-index: 1;
            position: relative;
            background: #ccc;
            /* ชั่วคราว ใช้เทส */
            pointer-events: all !important;
            /* z-index: 9999 !important; */
        }

        .sidebar {
            width: 400px;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            border-radius: 0 20px 20px 0;
            z-index: 10;
            overflow-y: auto;
            box-shadow: -10px 0 30px rgba(0, 0, 0, 0.2);
        }

        .sidebar-header {
            padding: 30px;
            background: linear-gradient(135deg, #ff6b6b, #ee5a24);
            color: white;
            text-align: center;
        }

        .sidebar-header h2 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .add-house-btn {
            background: rgba(255, 255, 255, 0.2);
            border: 2px solid white;
            color: white;
            padding: 12px 24px;
            border-radius: 25px;
            cursor: pointer;
            font-size: 1rem;
            transition: all 0.3s ease;
            margin-top: 15px;
        }

        .add-house-btn:hover {
            background: white;
            color: #ff6b6b;
            transform: translateY(-2px);
        }

        .filter-section {
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-bottom: 1px solid rgba(0, 0, 0, 0.1);
        }

        .filter-section h3 {
            color: #333;
            margin-bottom: 15px;
            font-size: 1.1rem;
        }

        .filter-group {
            margin-bottom: 15px;
        }

        .filter-group label {
            display: block;
            color: #555;
            font-size: 0.9rem;
            margin-bottom: 5px;
        }

        .filter-group input,
        .filter-group select {
            width: 100%;
            padding: 8px 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 0.9rem;
        }

        .filter-group input:focus,
        .filter-group select:focus {
            outline: none;
            border-color: #667eea;
        }

        .clear-filter-btn {
            background: #6c757d;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 15px;
            cursor: pointer;
            font-size: 0.85rem;
            transition: all 0.3s ease;
        }

        .clear-filter-btn:hover {
            background: #5a6268;
        }

        .house-list {
            padding: 20px;
        }

        .house-item {
            background: white;
            margin-bottom: 15px;
            padding: 20px;
            border-radius: 15px;
            cursor: pointer;
            transition: all 0.3s ease;
            border-left: 4px solid #667eea;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .house-item:hover {
            transform: translateX(5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
        }

        .house-item.active {
            border-left-color: #ff6b6b;
            background: linear-gradient(135deg, #fff5f5, #ffe8e8);
        }

        .house-item.filtered {
            display: none;
        }

        .house-address {
            font-weight: bold;
            color: #333;
            margin-bottom: 8px;
            font-size: 1.1rem;
        }

        .house-members {
            color: #666;
            font-size: 0.9rem;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(5px);
        }

        .modal-content {
            background: white;
            margin: 2% auto;
            padding: 0;
            border-radius: 20px;
            width: 90%;
            max-width: 800px;
            max-height: 90vh;
            overflow-y: auto;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            animation: modalSlideIn 0.3s ease;
        }

        @keyframes modalSlideIn {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }

            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .modal-header {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            padding: 25px 30px;
            border-radius: 20px 20px 0 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .modal-header h2 {
            margin: 0;
            font-size: 1.8rem;
        }

        .close {
            background: rgba(255, 255, 255, 0.2);
            border: none;
            color: white;
            font-size: 1.5rem;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .close:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: rotate(90deg);
        }

        .modal-body {
            padding: 30px;
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #333;
            font-size: 1rem;
        }

        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e0e0e0;
            border-radius: 10px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-group input:focus,
        .form-group textarea:focus,
        .form-group select:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        .btn {
            padding: 12px 25px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            font-size: 1rem;
            font-weight: 600;
            transition: all 0.3s ease;
            margin-right: 10px;
            margin-bottom: 10px;
        }

        .btn-primary {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }

        .btn-secondary {
            background: #6c757d;
            color: white;
        }

        .btn-secondary:hover {
            background: #5a6268;
            transform: translateY(-2px);
        }

        .btn-danger {
            background: #dc3545;
            color: white;
        }

        .btn-danger:hover {
            background: #c82333;
            transform: translateY(-2px);
        }

        .person-card {
            background: #f8f9fa;
            border: 2px solid #e9ecef;
            border-radius: 15px;
            padding: 20px;
            margin-bottom: 20px;
            transition: all 0.3s ease;
        }

        .person-card:hover {
            border-color: #667eea;
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.1);
        }

        .person-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .person-name {
            font-size: 1.3rem;
            font-weight: bold;
            color: #333;
        }

        .person-details {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
        }

        .detail-item {
            background: white;
            padding: 10px 15px;
            border-radius: 8px;
            border-left: 3px solid #667eea;
        }

        .detail-label {
            font-size: 0.85rem;
            color: #666;
            margin-bottom: 3px;
        }

        .detail-value {
            font-weight: 600;
            color: #333;
        }

        .coords-display {
            background: rgba(255, 255, 255, 0.1);
            color: white;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
            font-family: monospace;
        }

        .no-results {
            text-align: center;
            color: #666;
            margin-top: 30px;
            font-style: italic;
        }

        .tree-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 40px;
            margin: 40px 0;
            font-family: sans-serif;
        }

        .generation {
            display: flex;
            gap: 30px;
            justify-content: center;
        }

        .person {
            background: #f0f0f0;
            border: 2px solid #ccc;
            padding: 12px 20px;
            border-radius: 10px;
            text-align: center;
            min-width: 120px;
        }

        .person span {
            display: block;
            font-size: 13px;
            color: #555;
        }

        #family-tree-container {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 40px;
            margin: 50px 0;
        }

        .generation {
            display: flex;
            justify-content: center;
            gap: 40px;
            position: relative;
        }

        .person {
            background: #fff;
            border: 2px solid #ccc;
            padding: 10px 20px;
            border-radius: 10px;
            min-width: 100px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            z-index: 2;
        }

        .person span {
            font-size: 12px;
            color: #666;
        }

        .line.vertical {
            width: 2px;
            height: 30px;
            background: #888;
            margin: -20px auto;
            z-index: 1;
        }

        #family-tree {
            font-family: sans-serif;
            margin-top: 30px;
        }

        .tree-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 40px;
            position: relative;
        }

        .generation {
            display: flex;
            justify-content: center;
            gap: 30px;
            position: relative;
            padding: 30px 0;
        }

        .person {
            background: #fff;
            border: 2px solid #ccc;
            padding: 12px 16px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            min-width: 140px;
            z-index: 1;
            /* อยู่บนเส้น */
            position: relative;
        }

        .person b {
            display: block;
            font-size: 16px;
            color: #333;
        }

        .person p {
            font-size: 13px;
            margin: 4px 0;
            color: #555;
        }

        .generation::after {
            content: "";
            position: absolute;
            top: 100%;
            left: 50%;
            width: 2px;
            height: 40px;
            background: #aaa;
            transform: translateX(-50%);
            z-index: 1;
        }

        .generation::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 0;
            right: 0;
            height: 2px;
            background-color: #bbb;
            z-index: 0;
        }

        .generation:last-child::after {
            display: none;
        }
    </style>
</head>

<body>
    <div class="header">
        <h1>🏠 ระบบจัดการข้อมูลบ้าน</h1>
        <p>ระบบนี้จัดทำเพื่อเก็บข้อมูลบ้านและจัดทำผังเครือญาติ</p>
        <script src="https://balkan.app/js/familytree.js"></script>
    </div>

    <div class="container">
        <div id="map"></div>

        <div class="sidebar">
            <div class="sidebar-header">
                <h2>รายการบ้าน</h2>
                <p>จำนวนบ้านทั้งหมด: <span id="houseCount">0</span> หลัง</p>
                <button class="add-house-btn" onclick="showAddHouseModal()">+ เพิ่มบ้านใหม่</button>
            </div>

            <!-- Filter Section -->
            <div class="filter-section">
                <h3>🔍 ค้นหาและกรองข้อมูล</h3>
                <div class="filter-group">
                    <label>ค้นหาที่อยู่:</label>
                    <input type="text" id="searchAddress" placeholder="พิมพ์ที่อยู่..." oninput="filterHouses()">
                </div>
                <div class="filter-group">
                    <label>ค้นหาชื่อสมาชิก:</label>
                    <input type="text" id="searchMember" placeholder="พิมพ์ชื่อสมาชิก..." oninput="filterHouses()">
                </div>
                <div class="filter-group">
                    <label>จำนวนสมาชิก:</label>
                    <select id="memberCount" onchange="filterHouses()">
                        <option value="">ทั้งหมด</option>
                        <option value="1">1 คน</option>
                        <option value="2">2 คน</option>
                        <option value="3">3 คน</option>
                        <option value="4">4 คน</option>
                        <option value="5+">5+ คน</option>
                    </select>
                </div>
                <button class="clear-filter-btn" onclick="clearFilters()">ล้างตัวกรอง</button>
            </div>

            <div class="house-list" id="houseList">
                <p style="text-align: center; color: #666; margin-top: 50px;">ยังไม่มีข้อมูลบ้าน<br>คลิกบนแผนที่เพื่อเพิ่มบ้านใหม่</p>
            </div>
        </div>
    </div>

    <!-- Modal เพิ่ม/แก้ไขบ้าน -->
    <div id="houseModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="modalTitle">เพิ่มบ้านใหม่</h2>

                <button class="add-house-btn" onclick="useCenterPosition()">📍 ใช้ตำแหน่งกลางหน้าจอ</button>
                <button class="close" onclick="closeModal()">&times;</button>
            </div>
            <div class="modal-body">
                <form id="houseForm">
                    <div class="form-group">
                        <label>ที่อยู่บ้าน:</label>
                        <textarea id="houseAddress" rows="3" placeholder="กรอกที่อยู่บ้าน..."></textarea>
                    </div>
                    <div class="form-group">
                        <label>ละติจูด (Latitude):</label>
                        <input type="number" id="latInput" step="any" placeholder="ละติจูด เช่น 13.754312">
                    </div>

                    <div class="form-group">
                        <label>ลองจิจูด (Longitude):</label>
                        <input type="number" id="lonInput" step="any" placeholder="ลองจิจูด เช่น 100.501345">
                    </div>

                    <div class="coords-display" id="coordsDisplay">
                        พิกัด: คลิกที่เพื่อเลือกตำแหน่งหรือกรอกพิกัดด้วยตนเอง
                    </div>

                    <h3 style="margin: 30px 0 20px 0; color: #333;">👥 สมาชิกในบ้าน</h3>
                    <div id="familyMembers"></div>

                    <button type="button" class="btn btn-secondary" onclick="addFamilyMember()">+ เพิ่มสมาชิกใหม่</button>

                    <div style="margin-top: 30px; text-align: center;">
                        <button type="button" class="btn btn-primary" onclick="saveHouse()">บันทึก</button>
                        <button type="button" class="btn btn-secondary" onclick="closeModal()">ยกเลิก</button>
                        <button type="button" class="btn btn-danger" onclick="deleteHouse()" id="deleteBtn" style="display: none;">ลบบ้าน</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal ดูรายละเอียดบ้าน -->
    <div id="detailModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2>รายละเอียดบ้าน</h2>





                <button class="close" onclick="closeDetailModal()">&times;</button>
            </div>
            <div class="modal-body">

                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 10px;">
                    <div>
                        <h2>ผังเครือญาติ</h2>
                    </div>
                    <button onclick="printFamilyTree()" class="btn btn-secondary">🖨️ พิมพ์ผังเครือญาติ</button>
                </div>
                <div id="family-tree"></div>
            </div>
            <div class="modal-body" id="detailContent">

            </div>



        </div>
    </div>

    <script src="https://api.longdo.com/map/?key=7b877e9fd982a351039fdb1e865bef49"></script>
    <script>
        const BASE_URL = `${location.protocol}//${location.hostname}/family-map`;
        console.log("🌐 URL พื้นฐาน:", BASE_URL);
        let map;
        let houses = [];
        let markers = [];
        let currentHouse = null;
        let selectedCoords = null;
        let memberCounter = 0;


        function printFamilyTree() {
            const treeContent = document.getElementById('family-tree').innerHTML;

            const houseAddress = window.currentHouseForPrint?.address || 'ไม่ระบุที่อยู่';

            const printWindow = window.open('', '_blank');
            printWindow.document.write(`
        <html>
        <head>
            <title>พิมพ์ผังเครือญาติ</title>
            <style>
                @media print {
                    @page {
                        size: A4 portrait;
                        margin: 1.5cm;
                    }
                    body {
                        margin: 0;
                        font-family: sans-serif;
                    }
                    .header {
                        text-align: center;
                        font-size: 16px;
                        margin-bottom: 20px;
                        font-weight: bold;
                    }
                    .tree-container {
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        gap: 20px;
                        width: 100%;
                    }
                    .generation {
                        display: flex;
                        justify-content: center;
                        gap: 10px;
                        flex-wrap: wrap;
                    }
                    .person {
                        border: 1px solid #999;
                        padding: 10px;
                        border-radius: 8px;
                        min-width: 120px;
                        max-width: 200px;
                        text-align: center;
                        font-size: 12px;
                        background: #fdfdfd;
                        page-break-inside: avoid;
                    }
                }
            </style>
        </head>
        <body onload="window.print(); window.close();">
                  <div class="header" style="text-align:center;"><h2>🏠 ผังเครือญาติของบ้าน</h2></div>
            <div class="header">📍 ที่อยู่: ${houseAddress}</div>
            <div class="tree-container">
                ${treeContent}
            </div>
        </body>
        </html>
    `);
            printWindow.document.close();
        }


        function initMap() {
            const placeholder = document.getElementById('map');
            if (!placeholder) {
                alert("❌ ไม่พบ <div id='map'> ตรวจสอบตำแหน่งใน HTML");
                return;
            }

            map = new longdo.Map({
                placeholder: placeholder,
                language: 'th',
                location: {
                    lat: 15.781525,
                    lon: 99.521408
                }, // 📍 มุมกล้องที่แม่วงก์
                zoom: 200

            });

            longdo.Event.bind(map, 'ready', function() {
                console.log("✅ แผนที่พร้อมแล้ว");

                longdo.Event.bind(map, 'click', function(mouse, location) {
                    selectedCoords = location;
                    updateCoordsDisplay();
                    showAddHouseModal();
                });

                // ถ้าต้องการเปิดใช้ตำแหน่งอัตโนมัติหลังแผนที่โหลด
                // ให้ใช้ตามนี้แทน:
                // map.location(longdo.LocationMode.GeolocationLocationMode);
            });
        }



        async function renderSimpleFamilyTree(houseId) {
            const treeDiv = document.getElementById('family-tree');
            treeDiv.innerHTML = '⏳ กำลังโหลดข้อมูล...';

            try {
                const res = await fetch(`${BASE_URL}/api.php?action=house&id=${houseId}`);
                const result = await res.json();

                if (!res.ok || !result.data) throw new Error("ไม่พบข้อมูล");

                const house = result.data;
                window.currentHouseForPrint = house;

                const members = house.members || [];

                // 🌱 แยก 5 generation
                const gen1 = []; // ทวด
                const gen2 = []; // ปู่ ย่า ตา ยาย
                const gen3 = []; // พ่อ แม่ ลุง ป้า ฯลฯ
                const gen4 = []; // ลูก
                const gen5 = []; // หลาน

                members.forEach(m => {
                    if (["ทวด"].includes(m.relation)) gen1.push(m);
                    else if (["ปู่", "ย่า", "ตา", "ยาย"].includes(m.relation)) gen2.push(m);
                    else if (["พ่อ", "แม่", "หัวหน้าครอบครัว", "คู่สมรส", "ลุง", "ป้า", "น้า", "อา"].includes(m.relation)) gen3.push(m);
                    else if (["ลูก", "บุตร"].includes(m.relation)) gen4.push(m);
                    else if (["หลาน"].includes(m.relation)) gen5.push(m);
                });

                // ✅ สร้าง HTML ของแต่ละ generation
                const makeGen = (list) =>
                    `<div class="generation">` +
                    list.map(m => {
                        const isDead = m.status === 'เสียชีวิต';
                        const hasDisease = m.disease && m.disease.trim() !== '';

                        // 🎨 สีพื้นหลัง
                        let baseColor = '#f0f0f0';
                        if (m.gender === 'ชาย') baseColor = '#cce5ff';
                        else if (m.gender === 'หญิง') baseColor = '#ffe6f0';

                        const bgColor = isDead ?
                            '#ccc' :
                            hasDisease ?
                            '#fff3cd' :
                            baseColor;

                        // 😎 Emoji
                        const emoji = isDead ?
                            '💀' :
                            hasDisease ?
                            '⚕️' :
                            m.gender === 'ชาย' ?
                            '👨' :
                            m.gender === 'หญิง' ?
                            '👩' :
                            '🙂';

                        return `
                    <div class="person" style="background:${bgColor}; padding: 10px; border-radius: 8px; margin: 5px;">
                        <b>${emoji} ${m.name}</b>
                        <p>(${m.relation || '-'})</p>
                        <p>อายุ ${m.age || '-'} ปี</p>
                        <p>เพศ: ${m.gender || 'ไม่ระบุ'}</p>
                        ${hasDisease ? `<p>โรค: ${m.disease}</p>` : ''}
                        ${isDead ? `<p style="color:red;">สถานะ: เสียชีวิต</p>` : ''}
                    </div>`;
                    }).join('') +
                    `</div>`;

                // ✅ วาด tree
                treeDiv.innerHTML = `
            <div class="tree-container">
                ${gen1.length ? makeGen(gen1) : ''}
                ${gen2.length ? makeGen(gen2) : ''}
                ${gen3.length ? makeGen(gen3) : ''}
                ${gen4.length ? makeGen(gen4) : ''}
                ${gen5.length ? makeGen(gen5) : ''}
            </div>
        `;
            } catch (err) {
                console.error(err);
                treeDiv.innerHTML = '<p style="color:red">เกิดข้อผิดพลาดในการโหลดข้อมูล</p>';
            }
        }



        // เรียกเมื่อเปิด modal หรือปุ่ม
        // เปลี่ยน ID ได้ตามต้องการ
        document.addEventListener('DOMContentLoaded', function() {
            initMap();
            loadHouses();
        });

        function updateCoordsDisplay() {
            const coordsEl = document.getElementById('coordsDisplay');
            const latInput = document.getElementById('latInput');
            const lonInput = document.getElementById('lonInput');

            if (selectedCoords && typeof selectedCoords.lat === 'number' && typeof selectedCoords.lon === 'number') {
                const lat = selectedCoords.lat.toFixed(6);
                const lon = selectedCoords.lon.toFixed(6);

                coordsEl.innerHTML = `✅ พิกัด: ${lat}, ${lon}`;
                if (latInput) latInput.value = lat;
                if (lonInput) lonInput.value = lon;
            } else {
                coordsEl.innerHTML = `<span style=color:#333;>⚠️ กดใช้ตำแหน่งกลางหน้าจอหรือกรอกข้อมูลด้วยตัวเอง</span>`;
                if (latInput) latInput.value = '';
                if (lonInput) lonInput.value = '';
            }
        }


        function showAddHouseModal() {
            currentHouse = null;
            document.getElementById('modalTitle').textContent = 'เพิ่มบ้านใหม่';
            document.getElementById('deleteBtn').style.display = 'none';
            resetForm();
            updateCoordsDisplay();
            document.getElementById('houseModal').style.display = 'block';
        }

        function showEditHouseModal(house) {
            currentHouse = house;
            selectedCoords = {
                lat: house.lat,
                lon: house.lon
            };
            document.getElementById('modalTitle').textContent = 'แก้ไขข้อมูลบ้าน';
            document.getElementById('deleteBtn').style.display = 'inline-block';
            populateForm(house);
            updateCoordsDisplay();
            document.getElementById('houseModal').style.display = 'block';
        }

        function resetForm() {
            document.getElementById('houseAddress').value = '';
            document.getElementById('familyMembers').innerHTML = '';
            memberCounter = 0;
            addFamilyMember();
        }

        function populateForm(house) {
            document.getElementById('houseAddress').value = house.address;
            document.getElementById('familyMembers').innerHTML = '';
            memberCounter = 0;
            house.members.forEach(member => addFamilyMember(member));
        }

        function addFamilyMember(member = null) {
            memberCounter++;
            const membersDiv = document.getElementById('familyMembers');
            const memberDiv = document.createElement('div');
            memberDiv.className = 'person-card';

            const genderOptions = ['ชาย', 'หญิง', 'อื่นๆ'];
            const statusOptions = ['มีชีวิตอยู่', 'เสียชีวิต'];
            const relationOptions = [
                "ทวด",
                "ปู่", "ย่า", "ตา", "ยาย",
                "พ่อ", "แม่", "หัวหน้าครอบครัว", "คู่สมรส", "ลุง", "ป้า", "น้า", "อา",
                "ลูก", "บุตร",
                "หลาน"
            ];

            memberDiv.innerHTML = `
        <div class="person-header">
            <div class="person-name">สมาชิกคนที่ ${memberCounter}</div>
            <button type="button" class="btn btn-danger" onclick="removeFamilyMember(this)" style="padding: 5px 10px; font-size: 0.8rem;">ลบ</button>
        </div>
        <div class="person-details">
            <div class="form-group">
                <label>ชื่อ-นามสกุล:</label>
                <input type="text" class="member-name" value="${member?.name || ''}" placeholder="ชื่อ-นามสกุล">
            </div>
            <div class="form-group">
                <label>อายุ:</label>
                <input type="number" class="member-age" value="${member?.age || ''}" placeholder="อายุ">
            </div>
            <div class="form-group">
                <label>ความสัมพันธ์:</label>
                <select class="member-relation">
                    <option value="">-- เลือก --</option>
                    ${relationOptions.map(rel => `<option value="${rel}" ${member?.relation === rel ? 'selected' : ''}>${rel}</option>`).join('')}
                </select>
            </div>
            <div class="form-group">
                <label>เพศ:</label>
                <select class="member-gender">
                    <option value="">-- เลือก --</option>
                    ${genderOptions.map(g => `<option value="${g}" ${member?.gender === g ? 'selected' : ''}>${g}</option>`).join('')}
                </select>
            </div>
            <div class="form-group">
                <label>สถานะการมีชีวิต:</label>
                <select class="member-status">
                    <option value="">-- เลือก --</option>
                    ${statusOptions.map(s => `<option value="${s}" ${member?.status === s ? 'selected' : ''}>${s}</option>`).join('')}
                </select>
            </div>
            <div class="form-group">
                <label>โรคประจำตัว:</label>
                <textarea class="member-disease" rows="2" placeholder="โรคประจำตัว">${member?.disease || ''}</textarea>
            </div>
        </div>
    `;
            membersDiv.appendChild(memberDiv);
        }




        async function showFamilyTreeWithFamilyTreeJS(houseId) {
            if (!houseId) return;

            try {

                const res = await fetch(`${BASE_URL}/api.php?action=house&id=${houseId}`);
                const result = await res.json();

                if (!res.ok || !result.data) {
                    alert('ไม่พบข้อมูลบ้าน');
                    return;
                }

                const house = result.data;

                if (!house.members || house.members.length === 0) {
                    alert('บ้านนี้ไม่มีข้อมูลสมาชิก');
                    return;
                }

                const nodes = house.members.map((member, index) => ({
                    id: index + 1,
                    name: member.name,
                    birth: `อายุ ${member.age || '?'}`,
                    tags: [member.relation || 'สมาชิก'],
                    pid: 0 // เชื่อมกับ root "บ้าน"
                }));

                nodes.unshift({
                    id: 0,
                    name: house.address,
                    birth: '🏠 บ้าน',
                    tags: ['บ้าน']
                });


                nodes.forEach(node => {
                    if (node.id !== 0) node.pids = [0];
                });

                console.log("📦 แสดง nodes:", nodes);

                const treeEl = document.getElementById('tree');
                if (!treeEl) {
                    alert("ไม่พบ <div id='tree'>");
                    return;
                }
                treeEl.innerHTML = '';

                new FamilyTree(treeEl, {
                    mode: 'light',
                    template: 'hugo',
                    nodeBinding: {
                        field_0: 'name',
                        field_1: 'birth'
                    },
                    tags: {
                        "บ้าน": {
                            node: {
                                color: '#764ba2'
                            }
                        }
                    },
                    nodes
                });

            } catch (err) {
                console.error("❌ ไม่สามารถโหลดหรือแสดง tree:", err);
                alert('เกิดข้อผิดพลาด');
            }
        }



        function removeFamilyMember(button) {
            button.closest('.person-card').remove();
        }

        async function saveHouse() {
            const address = document.getElementById('houseAddress').value.trim();
            if (!address) return alert('กรุณากรอกที่อยู่บ้าน');

            const lat = parseFloat(document.getElementById('latInput').value);
            const lon = parseFloat(document.getElementById('lonInput').value);

            if (isNaN(lat) || isNaN(lon)) {
                alert("กรุณากรอกพิกัด latitude / longitude ให้ถูกต้อง");
                return;
            }

            const memberCards = document.querySelectorAll('.person-card');
            if (memberCards.length === 0) return alert('กรุณาเพิ่มสมาชิกอย่างน้อย 1 คน');

            const members = [];
            memberCards.forEach(card => {
                const nameEl = card.querySelector('.member-name');
                const ageEl = card.querySelector('.member-age');
                const relationEl = card.querySelector('.member-relation');
                const diseaseEl = card.querySelector('.member-disease');
                const genderEl = card.querySelector('.member-gender');
                const statusEl = card.querySelector('.member-status');

                if (nameEl && ageEl && relationEl && diseaseEl && genderEl && statusEl) {
                    const name = nameEl.value.trim();
                    if (name) {
                        members.push({
                            name,
                            age: ageEl.value,
                            relation: relationEl.value,
                            gender: genderEl.value,
                            status: statusEl.value,
                            disease: diseaseEl.value.trim()
                        });
                    }
                }
            });


            if (members.length === 0) return alert('ต้องมีสมาชิกอย่างน้อย 1 คน');

            const houseData = {
                address,
                lat,
                lon,
                members
            };

            if (currentHouse?.id) {
                houseData.id = currentHouse.id;
                houseData.update = true;
            }


            const url = `${BASE_URL}/api.php?action=house`;

            try {
                const res = await fetch(url, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(houseData)
                });

                const text = await res.text();
                let result;
                try {
                    result = JSON.parse(text);
                } catch (err) {
                    console.error("❌ ไม่สามารถ parse JSON:", text);
                    throw new Error('API ไม่ส่งข้อมูล JSON');
                }

                if (!res.ok) throw new Error(result.message || 'เกิดข้อผิดพลาด');

                alert(currentHouse ? 'แก้ไขข้อมูลบ้านเรียบร้อยแล้ว' : 'เพิ่มบ้านใหม่เรียบร้อยแล้ว');
                closeModal();
                loadHouses();
            } catch (err) {
                console.error("❌ Error saving house:", err);
                alert('เกิดข้อผิดพลาด: ' + err.message);
            }
        }



        async function deleteHouse() {
            if (!currentHouse || !confirm('คุณต้องการลบบ้านนี้หรือไม่?')) return;

            try {
                const res = await fetch(`${BASE_URL}/api.php?action=house&id=${currentHouse.id}`, {
                    method: 'DELETE'
                });
                const result = await res.json();
                if (!res.ok) throw new Error(result.message || 'ลบไม่สำเร็จ');

                alert('ลบบ้านเรียบร้อยแล้ว');
                closeModal();
                loadHouses();
            } catch (err) {
                console.error("❌ ลบข้อมูลผิดพลาด:", err);
                alert('ไม่สามารถลบข้อมูลได้');
            }
        }


        async function loadHouses() {
            try {
                const res = await fetch(`${BASE_URL}/api.php?action=houses`);
                const result = await res.json();
                console.log("📦 ข้อมูลบ้าน:", result);
                if (!res.ok) throw new Error(result.message || 'โหลดข้อมูลล้มเหลว');

                houses = (result.data || []).map(h => {

                    const rawMembers = Array.isArray(h.members) ? h.members : [];
                    const cleanedMembers = rawMembers
                        .filter(m => m && typeof m === 'object') // กรอง null/undefined
                        .map(m => ({
                            name: m.name ?? '',
                            age: m.age ?? '',
                            relation: m.relation ?? '',
                            disease: m.disease ?? '',
                            status: m.status ?? 'มีชีวิตอยู่',
                            gender: m.gender ?? 'ไม่ระบุ',
                        }));

                    return {
                        id: h.id ?? null,
                        address: h.address ?? 'ไม่ระบุที่อยู่',
                        lat: parseFloat(h.lat) || 0,
                        lon: parseFloat(h.lon) || 0,
                        members: cleanedMembers
                    };
                });

                updateHouseList();
                updateMarkers();
            } catch (err) {
                console.error("❌ โหลดข้อมูลผิดพลาด:", err);
                alert('ไม่สามารถโหลดข้อมูลบ้านได้');
            }
        }



        function closeModal() {
            document.getElementById('houseModal').style.display = 'none';
            selectedCoords = null;
            currentHouse = null;
        }

        function updateHouseList() {
            const listEl = document.getElementById('houseList');
            const countEl = document.getElementById('houseCount');

            countEl.textContent = houses.length;

            if (houses.length === 0) {
                listEl.innerHTML = '<p style="text-align: center; color: #666; margin-top: 50px;">ยังไม่มีข้อมูลบ้าน<br>คลิกบนแผนที่เพื่อเพิ่มบ้านใหม่</p>';
                return;
            }

            listEl.innerHTML = houses.map(house => {
                const members = Array.isArray(house.members) ? house.members : [];
                console.log(members)
                return `
                    <div class="house-item" data-house-id="${house.id}" onclick="showHouseDetail(${house.id})">
                        <div class="house-address">${house.address}</div>
                        <div class="house-members">
                            👥 สมาชิก ${members.length} คน: ${members.slice(0, 2).map(m => m.name).join(', ')}${members.length > 2 ? '...' : ''}
                        </div>
                    </div>
                `;
            }).join('');

            // Apply current filters
            filterHouses();
        }

        function updateMarkers() {
            markers.forEach(marker => map.Overlays.remove(marker));
            markers = [];

            console.log("🧭 เพิ่มหมุดทั้งหมด", houses);

            houses.forEach(house => {
                const marker = new longdo.Marker({
                    lon: parseFloat(house.lon),
                    lat: parseFloat(house.lat)
                }, {
                    title: house.address,
                    icon: {
                        url: 'https://map.longdo.com/mmmap/images/pin_mark.png',
                        offset: {
                            x: 12,
                            y: 45
                        }
                    }
                });

                longdo.Event.bind(marker, 'click', function() {
                    showHouseDetail(house.id);

                });

                map.Overlays.add(marker);
                markers.push(marker);
            });
        }

        function showHouseDetail(houseId) {

            const house = houses.find(h => h.id === houseId);
            if (!house) return;
            console.log("📍 แสดงรายละเอียดบ้าน:", house);
            renderSimpleFamilyTree(houseId);
            const content = `
    <div style="margin-bottom: 20px;">
        <h3 style="color: #333;">📍 ที่อยู่</h3>
        <p style="background: #f8f9fa; padding: 15px; border-radius: 10px; border-left: 4px solid #667eea;">${house.address}</p>
        <p style="color: #666; font-size: 0.9rem;">พิกัด: ${house.lat.toFixed(6)}, ${house.lon.toFixed(6)}</p>
    </div>
    <div>
        <h3 style="color: #333;">👥 สมาชิกในบ้าน (${house.members.length} คน)</h3>
        ${house.members.map(member => `
            <div class="person-card">
                <div class="person-header"><div class="person-name">${member.name}</div></div>
                <div class="person-details">
                    <div class="detail-item">
                        <div class="detail-label">อายุ</div>
                        <div class="detail-value">${member.age || '-'}</div>
                    </div>
                    <div class="detail-item">
                        <div class="detail-label">ความสัมพันธ์</div>
                        <div class="detail-value">${member.relation || '-'}</div>
                    </div>
                    <div class="detail-item">
                        <div class="detail-label">เพศ</div>
                        <div class="detail-value">${member.gender || '-'}</div>
                    </div>
                    <div class="detail-item">
                        <div class="detail-label">สถานะ</div>
                        <div class="detail-value">${member.status || '-'}</div>
                    </div>
                    <div class="detail-item" style="grid-column: 1 / -1;">
                        <div class="detail-label">โรคประจำตัว</div>
                        <div class="detail-value">${member.disease || 'ไม่มี'}</div>
                    </div>
                </div>
            </div>
        `).join('')}
    </div>
    <div style="text-align: center; margin-top: 30px;">
        <button class="btn btn-primary" onclick="editHouseFromDetail(${house.id})">✏️ แก้ไขข้อมูล</button>
        <button class="btn btn-secondary" onclick="closeDetailModal()">ปิด</button>
    </div>
`;


            document.getElementById('detailContent').innerHTML = content;
            document.getElementById('detailModal').style.display = 'block';

            map.location({
                lon: house.lon,
                lat: house.lat
            }, true);
            map.zoom(15);
        }

        function closeDetailModal() {
            document.getElementById('detailModal').style.display = 'none';
        }

        function editHouseFromDetail(houseId) {
            const house = houses.find(h => h.id === houseId);
            if (house) {
                showEditHouseModal(house);
                closeDetailModal(); // ปิด modal เดิม
            }
        }

        function filterHouses() {
            const searchAddress = document.getElementById('searchAddress').value.toLowerCase();
            const searchMember = document.getElementById('searchMember').value.toLowerCase();
            const memberCount = document.getElementById('memberCount').value;

            const houseItems = document.querySelectorAll('.house-item');
            houseItems.forEach(item => {
                const houseId = item.getAttribute('data-house-id');
                const house = houses.find(h => h.id == houseId);
                if (!house) return;

                const addressMatch = house.address.toLowerCase().includes(searchAddress);
                const memberMatch = house.members.some(m => m.name.toLowerCase().includes(searchMember));
                const countMatch = memberCount ? (memberCount === '5+' ? house.members.length >= 5 : house.members.length == parseInt(memberCount)) : true;

                if (addressMatch && memberMatch && countMatch) {
                    item.classList.remove('filtered');
                } else {
                    item.classList.add('filtered');
                }
            });
        }

        function clearFilters() {
            document.getElementById('searchAddress').value = '';
            document.getElementById('searchMember').value = '';
            document.getElementById('memberCount').value = '';
            filterHouses();
        }

        function useCenterPosition() {
            const center = map.location();
            console.log("📌 ตำแหน่งกลางหน้าจอ:", center);
            selectedCoords = center;
            updateCoordsDisplay();
            showAddHouseModal();
        }

        function useCenterPosition() {
            const center = map.location();
            if (!center || !center.lat || !center.lon) {
                alert("ไม่สามารถดึงพิกัดได้");
                return;
            }

            selectedCoords = center;
            updateCoordsDisplay();
            showAddHouseModal();
        }
    </script>
</body>

</html>