<?php 
session_start(); 
include "connection.php";
require_once "../phpmailer/class.phpmailer.php";

if (isset($_POST['mId']) && isset($_POST['password'])
    && isset($_POST['name']) && isset($_POST['email']) && isset($_POST['re_password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$mId = validate($_POST['mId']);
	$pass = validate($_POST['password']);

	$re_pass = validate($_POST['re_password']);
	$name = validate($_POST['name']);
	$email = validate($_POST['email']);

	$user_data = 'mId='. $mId. '&name='. $name. '&email='. $email;


	if (empty($mId)) {
		header("Location: signup.php?error=User Account is required&$user_data");
	    exit();
	}else if(empty($pass)){
        header("Location: signup.php?error=Password is required&$user_data");
	    exit();
	}
	else if(empty($re_pass)){
        header("Location: signup.php?error=Re Password is required&$user_data");
	    exit();
	}

	else if(empty($name)){
        header("Location: signup.php?error=Name is required&$user_data");
	    exit();
	}

	else if(empty($email)){
        header("Location: signup.php?error=Email is required&$user_data");
	    exit();
	}

	else if($pass !== $re_pass){
        header("Location: signup.php?error=The confirmation password  does not match&$user_data");
	    exit();
	}

	else{

		// hashing the password
        //$pass = md5($pass);

	    $sql = "SELECT * FROM member WHERE mId='$mId'";

	    date_default_timezone_set('Asia/Taipei');
        // $timezone = date_default_timezone_get();
        // echo "伺服器時區：" . $timezone;
		$day = date("j");    // 日，例如 27
		$hour = date("G");   // 時，例如 15
		$minute = date("i"); // 分，例如 48
		$second = date("s"); // 秒，例如 54
		$time = $day.$hour.$minute;

	    $token = $mId.$time.$name;
		$result = mysqli_query($con, $sql);

		if (mysqli_num_rows($result) > 0) {
			header("Location: signup.php?error=The Account is taken try another&$user_data");
	        exit();
		}else {
           $sql2 = "INSERT INTO member(mId, password, name, email, token) VALUES('$mId', '$pass', '$name', '$email', '$token')";
           $result2 = mysqli_query($con, $sql2);
           if ($result2) {
           	 // echo "Your account has been created successfully";
           	 // header("Location: login.php?success=Your account has been created successfully");
           	$mail = new PHPMailer();
			$mail->SMTPSecure = "ssl";
			$mail->Host = "smtp.gmail.com";
			$mail->Port = 465;
			$mail->CharSet = "utf-8";    //信件編碼
			$mail->Username = "";        //帳號，例:example@gmail.com
			$mail->Password = "";        //密碼
			$mail->IsSMTP();
			$mail->SMTPAuth = true;
			$mail->SMTPDebug  = 1;
			$mail->Encoding = "base64";
			$mail->IsHTML(true);     //內容HTML格式
			$mail->From = "";        //寄件者信箱
			$mail->FromName = "管理者";    //寄信者姓名
			$mail->Subject = "開通您的帳號";     //信件主旨
			$mail->Body = "親愛的" . $name . "：<br/>感謝您在我站註冊了新帳號。<br/>請輸入驗證碼啟用您的帳號。<br/>驗證碼：" . $token;    //信件內容
			$mail->AddAddress($email);   //收件者信箱
			if($mail->Send()){
    			// echo "寄信成功";
    			header("Location: ../jump.php");
			}else{
    			echo "寄信失敗";
    			//echo "Mailer Error: " . $mail->ErrorInfo;
			}
	        exit();
           }else {
	           	header("Location: signup.php?error=unknown error occurred&$user_data");
		        exit();
           }
		}
	}
	
}else{
	header("Location: signup.php");
	exit();
}
