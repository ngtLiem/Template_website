<?php
// Start the session
session_start();
?>
<?php

include '../Config/config.php';
include '../Config/config1.php';
include '../Config/connect.php';

 $ProductName = addslashes($_POST["ProductName"]);
 $BrandName = addslashes($_POST["BrandName"]);
 $ProductPrice = addslashes($_POST["ProductPrice"]);
 $Quantity = addslashes($_POST["Quantity"]);
 $TotalPrice = addslashes($_POST["TotalPrice"]);
 $DisplaySize = addslashes($_POST["DisplaySize"]);
 $OperatingSystem = addslashes($_POST["OperatingSystem"]);
 $Processor = addslashes($_POST["Processor"]);
 $InternalMemory = addslashes($_POST["InternalMemory"]);
 $RAM = addslashes($_POST["RAM"]);
 $CameraDescription = addslashes($_POST["CameraDescription"]);
 $BatteryLife = addslashes($_POST["BatteryLife"]);
 $Weight = addslashes($_POST["Weight"]);
 $Model = addslashes($_POST["Model"]);
 $Dimension = addslashes($_POST["Dimension"]);
 $ASIN = addslashes($_POST["ASIN"]);
 $date2 = addslashes($_POST["date2"]);
 $Description = addslashes($_POST["Description"]);
 $ProductImage = addslashes($_FILES["ProductImage"]["name"]);
 $IDUSer = addslashes($_SESSION["Id"]);
 $IDBranch = addslashes($_SESSION["IDBranch"]);
 
 $status = "Available";

$query ="INSERT INTO 
		product(`product_name`, `brand`, `price`, `quantity`, `TotalPrice`, `displaysize`, `operatingsystem`, `Processor`, `InternalMemory`, `RAM`, `cameradescription`, `batterylife`, `weight`, `model`, `dimension`, `ASIN`, `description`, `flaturedimage`, `status`, `date`, `IDUser`, `IDBranch`) 
		VALUES ('$ProductName', '$BrandName','$ProductPrice','$Quantity', '$TotalPrice','$DisplaySize', '$OperatingSystem', '$Processor', '$InternalMemory','$RAM','$CameraDescription','$BatteryLife', '$Weight','$Model', '$Dimension','$ASIN', '$Description', '$ProductImage','$status','$date2','$IDUSer','$IDBranch')";

 $result = mysqli_query($conn,$query)or die(mysqli_error($conn));
 // $row=mysqli_num_rows($result);
 
 if($result){
	echo "<script>alert('The product is successfully added')</script>";
	echo "<script>location.href='../AddNewProduct.php'</script>";

 }else{
	echo "<script>alert('the product is not successfully added')</script>";
	echo "<script>location.href='../AddNewProduct.php'</script>";

 } 
 ?>
  <?php
$target_dir = "../assets/img/Product_Uploaded/";
$target_file = $target_dir . basename($_FILES["ProductImage"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
move_uploaded_file($_FILES["ProductImage"]["tmp_name"], $target_file);    
?>
