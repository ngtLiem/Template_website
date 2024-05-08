<?php
// Start the session
session_start();
?>
<?php

include '../Config/config.php';
include '../Config/config1.php';
include '../Config/connect.php';


 $IDProduct = addslashes($_POST["IDProduct"]);
 $Price = addslashes($_POST["Price"]);
 $Quantity2 = addslashes($_POST["Quantity2"]);
 $TotalPrice2 = addslashes($_POST["TotalPrice2"]);
 $SupplierName = addslashes($_POST["SupplierName"]);
 $SupplierPhone = addslashes($_POST["SupplierPhone"]);
 $date2 = addslashes($_POST["date2"]);
 
 $IDUSer = addslashes($_SESSION["Id"]);
 $idd = addslashes($_SESSION["Idpro"]);
 $IDBranch = addslashes($_SESSION["IDBranch"]);
// $BalanceSender=0;
// $BalanceReceiver=0;
 $QuatityInStore = 0;
 if(!empty($_POST['id'])){
 	$qry = mysqli_query($conn,"SELECT * From purchase where purchase_id = {$_POST['is']} ");
 	$data = mysqli_fetch_array($qry);
 $QuatityInStore = $data['Quantity'];
 }

$quer= mysqli_query($conn,"SELECT DISTINCT quantity FROM product where productid='$IDProduct'");
while($i = mysqli_fetch_array($quer))
	{
	$QuatityInStore +=$i['quantity'];
	}
	
 if(!empty($_POST['id'])){
	$query = "UPDATE purchase set `IDProduct`= '$IDProduct', `Quantity`= '$Quantity2', `Price`= '$Price', `TotalPrice`= '$TotalPrice2', `SupplierName`= '$SupplierName', `SupplierPhone`= '$SupplierPhone', `Date`= '$date2', `IDUser`= '$IDUSer', `IDBranch`= '$IDBranch'";
}else{
$query ="INSERT INTO purchase (`IDProduct`, `Quantity`, `Price`, `TotalPrice`, `SupplierName`, `SupplierPhone`, `Date`, `IDUser`, `IDBranch`) 
VALUES ('$IDProduct','$Quantity2','$Price','$TotalPrice2','$SupplierName','$SupplierPhone','$date2','$IDUSer','$IDBranch')"; 
}
 
 $NewQty=$QuatityInStore+$Quantity2;
 
 $querii= $dbo->query("UPDATE product SET quantity='$NewQty' WHERE productid='$IDProduct'");
 
 mysqli_query($conn,$query)or die(mysqli_error($conn));
 if(mysqli_affected_rows($conn,)>=1)
 {
	echo "<script>alert('Products is Successfuly Added')</script>";
	echo "<script>location.href='../ViewProductToPurchase.php'</script>";

 }
 else
 {
	echo "<script>alert('Products is not Successfuly Added')</script>";
	echo "<script>location.href='../ViewProductToPurchase.php'</script>";
 } 

 ?>
