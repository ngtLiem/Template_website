<?php
// Start the session
session_start();
?>
<?php

include '../Config/config.php';
include '../Config/config1.php';
include '../Config/connect.php';

 $InvoiceNumber = addslashes($_POST["InvoiceNumber"]);
 $IDProduct = addslashes($_POST["IDProduct"]);
 $Price = addslashes($_POST["Price"]);
 $QuatityInStore = addslashes($_POST["QuatityInStore"]);
 $Quantity2 = addslashes($_POST["Quantity2"]);
 $TotalPrice2 = addslashes($_POST["TotalPrice2"]);
 $AmountPaid = addslashes($_POST["AmountPaid"]);
 $Balance = addslashes($_POST["Balance"]);
 $ClientName = addslashes($_POST["ClientName"]);
 $ClientPhone = addslashes($_POST["ClientPhone"]);
 $date2 = addslashes($_POST["date2"]);
 
 $IDUSer = addslashes($_SESSION["Id"]);
 $IDBranch = addslashes($_SESSION["IDBranch"]);
 $idd = addslashes($_SESSION["Idpro"]);
// $BalanceSender=0;
// $BalanceReceiver=0;
 
// $quer= mysqli_query($conn,"SELECT DISTINCT quantity FROM product where productid='$IDProduct'");
//while($i = mysqli_fetch_array($quer))
//	{
//	$QtyInStore=$i['quantity'];
//	}

 if(!empty($_POST['id'])){
 	$qry = mysqli_query($conn,"SELECT * FROM sales where salesid = {$_POST['id']}");

 	$data = mysqli_fetch_array($qry);

 }
	
 if($QuatityInStore>=$Quantity2)
 {
 if(!empty($_POST['id'])){
 	$query = "UPDATE sales set `IDProduct`='$IDProduct', `Price` ='$Price', `QuatityInStore` ='$QuatityInStore', `QuantitySold` ='$Quantity2', `TotalPrice` ='$TotalPrice2', `AmountPaid` ='$AmountPaid', `Balance` ='$Balance', `ClientName` ='$ClientName', `PhoneNumber` ='$ClientPhone', `SaleDate` ='$date2', `IDInvoice` ='$InvoiceNumber', `IDUSer` ='$IDUSer', `IDBranch` = '$IDBranch' where salesid = {$_POST['id']} ";
 }else{
 	$query ="INSERT INTO sales (`IDProduct`, `Price`, `QuatityInStore`, `QuantitySold`, `TotalPrice`, `AmountPaid`, `Balance`, `ClientName`, `PhoneNumber`, `SaleDate`, `IDInvoice`, `IDUSer`, `IDBranch`) VALUES ('$IDProduct','$Price','$QuatityInStore','$Quantity2','$TotalPrice2','$AmountPaid','$Balance','$ClientName','$ClientPhone','$date2','$InvoiceNumber','$IDUSer', '$IDBranch')"; 
 }

 // $row="mysqli_num_rows($query)";
 
 $NewQty=$QuatityInStore-$Quantity2;
 
 $querii= $dbo->query("UPDATE product SET quantity='$NewQty' WHERE productid='$IDProduct'");
 
 mysqli_query($conn,$query)or die(mysqli_error($conn));
 if(mysqli_affected_rows($conn,)>=1)
 {
	echo "<script>alert('Products is Successfuly Sold')</script>";
	echo "<script>location.href='../ViewProductToSale.php'</script>";

 }
 else
 {
	echo "<script>alert('Products is not Successfuly Sold')</script>";
	echo "<script>location.href='../ViewProductToSale.php'</script>";
 } 
 }
else
 {
echo "<script>alert('You do not have enough Product')</script>";
echo "<script>location.href='../AddNewSales.php?id=$idd'</script>";
 }
 ?>
