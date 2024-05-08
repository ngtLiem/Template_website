<?php
// Start the session
session_start();
?>
<?php

include '../Config/config.php';
include '../Config/config1.php';
include '../Config/connect.php';

 $BranchName = ($_POST["BranchName"]);
 $Address = ($_POST["Address"]);


$query ="INSERT INTO 
		blanch (`BranchName`, `Address`) 
		VALUES ('$BranchName', '$Address')";
 $row="mysqli_num_rows($query)";

 mysqli_query($conn,$query)or die(mysqli_error($conn));
 
 if(mysqli_affected_rows($conn,)>=1){
	echo "<script>alert('The Blanch  is successfully Created')</script>";
	echo "<script>location.href='../Settings.php'</script>";

 }else{
	echo "<script>alert('the Blanch is not successfully Created')</script>";
	echo "<script>location.href='../Settings.php'</script>";

 }
 ?>
