<?php
include '../Config/config.php';


$del = mysqli_query($conn,"DELETE FROM product where productid = {$_GET['pid']} ");

if($del){
	$del2 = mysqli_query($conn,"DELETE FROM purchase where IDProdcut = {$_GET['pid']} ");
	$del3 = mysqli_query($conn,"DELETE FROM sales where IDProdcut = {$_GET['pid']} ");
	$del4 = mysqli_query($conn,"DELETE FROM price where IDProdcut = {$_GET['pid']} ");
	
	echo "<script>alert('Product successfully deleted');location.href = '../ViewProduct.php'</script>";
}

?>