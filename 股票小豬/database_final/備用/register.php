<?php 

	include_once("connection.php");//連線資料庫
	require_once "phpmailer/class.phpmailer.php";
	// include_once("smtp.class.php");//郵件傳送類

	$username = stripslashes(trim($_POST['username']));
	$query = mysql_query("select id from t_user where username='$username'");
	$num = mysql_num_rows($query);
	if($num==1){
		echo '使用者名稱已存在，請換個其他的使用者名稱';
		exit;
	}

	$password = md5(trim($_POST['password'])); //加密密碼
	$email = trim($_POST['email']); //郵箱
	$regtime = time();
	$token = md5($username.$password.$regtime); //建立用於啟用識別碼
	$token_exptime = time(60*60*24);//過期時間為24小時後
	$sql = "insert into `t_user` (`username`,`password`,`email`,`token`,`token_exptime`,`regtime`)
	values ('$username','$password','$email','$token','$token_exptime','$regtime')";
	mysql_query($sql);

	if (mysql_insert_id()) {//寫入成功，發郵件
		include_once("smtp.class.php");
		$smtpserver = "smtp.163.com"; //SMTP伺服器
		$smtpserverport = 25; //SMTP伺服器埠
		$smtpusermail = "hjl416148489_4@163.com"; //SMTP伺服器的使用者郵箱
		$smtpuser = "hjl416148489_4@163.com"; //SMTP伺服器的使用者帳號
		$smtppass = "hjl7233163"; //SMTP伺服器的使用者密碼
		$smtp = new Smtp($smtpserver, $smtpserverport, true, $smtpuser, $smtppass); //這裡面的一個true是表示使用身份驗證,否則不使用身份驗證.
		$emailtype = "HTML"; //信件型別，文字:text；網頁：HTML
		$smtpemailto = $email;
		$smtpemailfrom = $smtpusermail;
		$emailsubject = "使用者帳號啟用";
		$emailbody = "親愛的" . $username . "：<br/>感謝您在我站註冊了新帳號。<br/>請點選連結啟用您的帳號。<br/><a href='//www.jb51.net/demo/active.php?verify=" . $token . "' target='_blank'>//www.jb51.net/demo/active.php?verify=" . $token . "</a><br/>如果以上鍊接無法點選，請將它複製到你的瀏覽器位址列中進入訪問，該連結24小時內有效。<br/>如果此次啟用請求非你本人所發，請忽略本郵件。<br/><p style='text-align:right'>-------- 指令碼之家//www.jb51.net敬上</p>";
		$rs = $smtp->sendmail($smtpemailto, $smtpemailfrom, $emailsubject, $emailbody, $emailtype);
		if ($rs == 1) {
		$msg = '恭喜您，註冊成功！<br/>請登入到您的郵箱及時啟用您的帳號！';
		} else {
		$msg = $rs;
		}
		echo $msg;
	}
?>