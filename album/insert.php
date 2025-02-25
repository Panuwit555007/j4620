<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
ฟอร์ม เพื่มข้อมูล

<form method="post" action="">
ชื่อสินค้า
	<input type="text" name="pname" required autofocus> <br>
	<button type="submit">บันทึก</button>
</form>

<?php
if ($_SERVER['REQUEST_METHOD']==='POST'){
	include_once("../connectdb.php");
	$pname = $_POST['pname'];
	$pprice = $_POST['pprice'];
	$sql = "INSERT INTO products (p_name , p_price) VALUES ('{$pname}' , '{$pprice}')";
	mysqli_query($conn, $sql) or die ('insert error');


	
	echo "<script>";
	echo "alert('เพิ่มข้อมูลสำเร็จ');";
	echo "</script>";

}

?> 
</body>
</html>