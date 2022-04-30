<?php
require_once "phpmailer/class.phpmailer.php";
$mail = new PHPMailer();
$mail->SMTPSecure = "ssl";
$mail->Host = "smtp.gmail.com";
$mail->Port = 465;
$mail->CharSet = "utf-8";    //信件編碼
$mail->Username = "julia20010828@gmail.com";        //帳號，例:example@gmail.com
$mail->Password = "";        //密碼
$mail->IsSMTP();
$mail->SMTPAuth = true;
$mail->SMTPDebug  = 1;
$mail->Encoding = "base64";
$mail->IsHTML(true);     //內容HTML格式
$mail->From = "julia20010828@gmail.com";        //寄件者信箱
$mail->FromName = "管理者";    //寄信者姓名
$mail->Subject = "test";     //信件主旨
$mail->Body = "test";        //信件內容
$mail->AddAddress("u10550015@lssh.tp.edu.tw");   //收件者信箱
if($mail->Send()){
    echo "寄信成功";
}else{
    echo "寄信失敗";
    //echo "Mailer Error: " . $mail->ErrorInfo;
}
?>