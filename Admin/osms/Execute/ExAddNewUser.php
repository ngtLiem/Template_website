<?php
// Start the session
session_start();
?>
<?php

include '../Config/config.php';
include '../Config/config1.php';
include '../Config/connect.php';

 $Names = ($_POST["Names"]);
 $Address = ($_POST["Address"]);
 $email = ($_POST["email"]);
 $Role = ($_POST["Role"]);
 $UserName = ($_POST["UserName"]);
 $Password = ($_POST["Password"]);
 $Activate = ($_POST["Activate"]);
 $Branch = ($_POST["Branch"]);
 $ProfilePicture = ($_FILES["ProfilePicture"]["name"]);
 $Username2="";
  	
$queri= mysqli_query($conn,"SELECT * FROM  user where username='$UserName'"); 
while($ss = mysqli_fetch_array($queri))
	{
	$Username2=$ss['username'];
	}

if($UserName==$Username2){
echo "<script>alert('The UserName has Allready Used')</script>";
echo "<script>location.href='../AddNewUser.php'</script>";
}

else
{
$query ="INSERT INTO 
		user (`name`, `address`, `e-mail`, `username`, `passwourd`, `role`, `activate`, `profilepicture`, `IDBranch`) 
		VALUES ('$Names', '$Address','$email', '$UserName', '$Password','$Role', '$Activate','$ProfilePicture','$Branch')";
 $row="mysqli_num_rows($query)";

 mysqli_query($conn,$query)or die(mysqli_error($conn));
 
 if(mysqli_affected_rows($conn,)>=1){
	echo "<script>alert('The user Account is successfully created, can now login')</script>";
	echo "<script>location.href='../AddNewUser.php'</script>";

 }else{
	echo "<script>alert('the user Account is not successfully created, plz try again later')</script>";
	echo "<script>location.href='../AddNewUser.php'</script>";

 } }
 ?>
  <?php
$target_dir = "../assets/img/Profile_Uploaded/";
$target_file = $target_dir . basename($_FILES["ProfilePicture"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
move_uploaded_file($_FILES["ProfilePicture"]["tmp_name"], $target_file);    
?>
