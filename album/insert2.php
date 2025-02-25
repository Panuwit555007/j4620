<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ฟอร์มเพิ่มสินค้า</title>
</head>

<body>
<h1>ฟอร์มเพิ่มข้อมูลสินค้า</h1>

<form method="post" action="" enctype="multipart/form-data">
	ชื่อสินค้า: <input type="text" name="pname" required autofocus> <br>
	รายละเอียดสินค้า: <textarea name="pdetail" required></textarea><br>
	ราคา: <input type="text" name="pprice" required> <br>
	หมวดหมู่สินค้า: <input type="number" name="cid" required><br>
	อัปโหลดรูปภาพ: <input type="file" name="pimage" accept="images/*" required> <br>
    <button type="submit">บันทึก</button>
</form>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	include_once("../connectdb.php");
	
	// รับค่าจากฟอร์ม
	$pname = $_POST['pname'];
	$pdetail = $_POST['pdetail'];
	$pprice = $_POST['pprice'];
	$c_id = $_POST['cid'];

	// การอัปโหลดรูปภาพ
	$target_dir = "../images/"; // โฟลเดอร์สำหรับเก็บรูปภาพ
	$target_file = $target_dir . basename($_FILES["pimage"]["name"]);
	$imagesFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

	// ตรวจสอบว่ารูปภาพเป็นไฟล์ที่ถูกต้องหรือไม่
	$check = getimagesize($_FILES["pimage"]["tmp_name"]);
	if($check !== false) {
		// อัปโหลดไฟล์
		if (move_uploaded_file($_FILES["pimage"]["tmp_name"], $target_file)) {
			// แทรกข้อมูลลงในฐานข้อมูล
			$pimage = basename($_FILES["pimage"]["name"]); // ชื่อไฟล์ที่อัปโหลด
			$sql = "INSERT INTO product (p_name, p_detail, p_price, p_ext, c_id) 
					VALUES ('{$pname}', '{$pdetail}', '{$pprice}', '{$pimage}', '{$c_id}')";
			if (mysqli_query($conn, $sql)) {
				echo "ข้อมูลสินค้าถูกบันทึกเรียบร้อยแล้ว!";
			} else {
				echo "เกิดข้อผิดพลาดในการบันทึกข้อมูล: " . mysqli_error($conn);
			}
		} else {
			echo "ขออภัย, เกิดข้อผิดพลาดในการอัปโหลดไฟล์.";
		}
	} else {
		echo "ไฟล์ที่อัปโหลดไม่ใช่ไฟล์รูปภาพ.";
	}
}
?>

</body>
</html>
