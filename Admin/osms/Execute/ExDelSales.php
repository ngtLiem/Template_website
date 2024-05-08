<?php
include '../Config/config.php';

$qry = mysqli_query($conn,"SELECT * from sales where salesid = {$_GET['sid']} ");
$data = mysqli_fetch_array($qry);

$QuantitySold = $data['QuantitySold'];

$del = mysqli_query($conn,"DELETE FROM sales where salesid = {$_GET['sid']} ");

if($del){
	$update= mysqli_query($conn,"UPDATE product set quantity = quantity + {$QuantitySold} where productid = {$data['IDProduct']}");
	$del2 = mysqli_query($conn,"DELETE FROM invoice where InvoiceNumber = {$data['IDInvoice']} ");

	echo "<script>alert('Sales successfully deleted');location.href = '../ViewSales.php'</script>";
}

?>