<?php
include '../include/connect.php';
include 'function/function.php';
$delete = "delete from nhacungcap where idncc='{$_GET['idncc']}'";
$tenncc=$_GET['tenncc'];
$del = mysql_query($delete);
if ($del)
	//echo "thanh cong";
	//header("location: index.php?admin=hienthind");
	redirect ("admin.php?admin=hienthincc", "Xóa người dùng thành công. ", 2);
	else
	echo "Xóa người dùng thất bại";
?>