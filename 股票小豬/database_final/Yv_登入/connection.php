<?php 

$sname = "localhost";
$mId = "root";
$password = "";

$dbname = "database_final";

if(!$con = mysqli_connect($sname, $mId, $password, $dbname)){
	echo "failed to connect!";
}


?>