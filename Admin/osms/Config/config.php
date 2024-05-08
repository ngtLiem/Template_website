

<?php
$conn = mysqli_connect("127.0.0.1", "root", "") or die(mysqli_error($conn));
mysqli_select_db($conn,"hellophones") or die(mysqli_error($conn));
?>

<?Php

//session_start();
$dbhost_name = "localhost";
$database = "hellophones";// database name
$username = "root"; // user name
$password = ""; // password 

//////// Do not Edit below /////////
try {
$dbo = new PDO('mysql:host=localhost;dbname='.$database, $username, $password);
} catch (PDOException $e) {
print "Error!: " . $e->getMessage() . "<br/>";
die();
}

?>

