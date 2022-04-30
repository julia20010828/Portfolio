<?php 
session_start(); 
include "connection.php";

if (isset($_POST['mId']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$mId = validate($_POST['mId']);
	$pass = validate($_POST['password']);

	if (empty($mId)) {
		header("Location: index.php?error=User Account is required");
	    exit();
	}else if(empty($pass)){
        header("Location: index.php?error=Password is required");
	    exit();
	}else{
		// hashing the password
        //$pass = md5($pass);

        
		$sql = "SELECT * FROM member WHERE mId='$mId' AND password='$pass'";

		$result = mysqli_query($con, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['mId'] === $mId && $row['password'] === $pass) {
            	$_SESSION['mId'] = $row['mId'];
            	$_SESSION['name'] = $row['name'];
            	$_SESSION['email'] = $row['email'];
            	$_SESSION['id'] = $row['id'];
            	header("Location: index1.php");
		        exit();
            }else{
				header("Location: index.php?error=Incorect User Account or password");
		        exit();
			}
		}else{
			header("Location: index.php?error=Incorect User Account or password");
	        exit();
		}
	}
	
}else{
	header("Location: index.php");
	exit();
}