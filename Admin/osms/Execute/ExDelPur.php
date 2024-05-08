<?php
include '../Config/config.php';

$qry = mysqli_query($conn,"SELECT * from purchase where purchaseid = {$_GET['pid']} ");
$data = mysqli_fetch_array($qry);

$Quantity = $data['Quantity'];

$del = mysqli_query($conn,"DELETE FROM purchase where purchaseid = {$_GET['pid']} ");

if($del){
	$update= mysqli_query($conn,"UPDATE product set quantity = quantity - {$Quantity} where productid = {$data['IDProduct']}");
	echo "<script>alert('Purchase successfully deleted');location.href = '../ViewPurchase.php'</script>";
}

?>