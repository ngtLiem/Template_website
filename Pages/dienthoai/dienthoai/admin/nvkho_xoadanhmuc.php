<?php
include'../include/connect.php';
include'function/function.php';
$delete = "delete from danhmuc where madm='{$_GET['madm']}'";
$del = mysql_query($delete);
if ($del)
    {
        redirect ("staff.php?staff=hienthidm", "Xóa danh mục thành công. ", 1);
    }
    else
        echo "Xóa danh mục thất bại";
?>
