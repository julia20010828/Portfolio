<?php  
	$url = "Yv_登入/index.php";
?>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="refresh" content="3;url=<?php echo $url; ?>"> 
	<title></title>
</head>
<body>
	<?php  

	include "Yv_登入/connection.php";

	if (isset($_POST['verify'])) {

		function validate($data){
       		$data = trim($data);
	   		$data = stripslashes($data);
	   		$data = htmlspecialchars($data);
	   		return $data;
		}

		$verify = validate($_POST['verify']);

		$sql = "SELECT * FROM member WHERE token='$verify'";
		$result = mysqli_query($con, $sql);

		// echo (mysqli_num_rows($result));

		if(mysqli_num_rows($result) === 0){
			header("Location: verify.php?error=Verifying code is wrong");
		}
		else{
			$sql2 = "UPDATE `member` SET `status`= 1 WHERE `token` = '$verify'";
			mysqli_query($con, $sql2);?>
			<p>Verifying code is correct!</p>
			<p>Transit to the login page after 3 seconds automatically.</p>
			<?php
		}
	}else{
		header("Location: verify.php");
	}
	?>
</body>
</html>
