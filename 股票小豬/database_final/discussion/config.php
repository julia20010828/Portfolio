<?php include_once "connection.php";
	switch ($_GET["method"]) {
		case "login":
			login();
			break;
		case "signup":
			signup();
			break;
		case "logout":
			logout();
			break;
		default:
			break;
	}
	

	function login(){
		$sql="SELECT * FROM `member`
				WHERE mId = '$_POST[mId]' && password = '$_POST[password]'";
		global $con;
		$result = mysqli_query($con , $sql) or die('MySQL query error');
	    $row = mysqli_fetch_array($result);
	    if($row==""){
			echo "<script type='text/javascript'>";
			echo "alert('帳密錯誤');";
			echo "location.href='login.php';";
			echo "</script>";
	    }else{
	    	session_start();
	    	$_SESSION["id"] = $row['id'];
	    	echo "<script type='text/javascript'>";
			echo "alert('登入成功');";
			echo "location.href='index1mId.php';";
			echo "</script>";
	    }
	} 

	function signup(){
		$sql="SELECT * FROM `member`
				WHERE mId = '$_POST[mId]'";
		global $con;
	    $result = mysqli_query($con , $sql) or die('MySQL query error');
	    $row = mysqli_fetch_array($result);
		if($row!=""){
			echo "<script type='text/javascript'>";
			echo "alert('已經辦過帳號囉');";
			echo "location.href='login.php';";
			echo "</script>";
		}
		else{
			$sql="INSERT INTO `member` (mId, password, name)
					VALUES ('$_POST[mId]','$_POST[password]','$_POST[name]')";
			global $con;
		    $result = mysqli_query($con , $sql) or die("MySQL query error");
		    
			$sql="SELECT * FROM `member`
				WHERE mId = '$_POST[mId]' && password = '$_POST[password]'";
			global $con;
	    	$result = mysqli_query($con , $sql) or die('MySQL query error');
	    	$row = mysqli_fetch_array($result);		    
		    session_start();
	    	$_SESSION["id"] = $row["id"];
		 	echo "<script type='text/javascript'>";
			echo "alert('註冊成功');";
			echo "location.href='index1.php';";
			echo "</script>";
		}
	} 

	function logout(){
		session_start();
		if(isset($_SESSION["id"])){
			session_unset();
			echo "<script type='text/javascript'>";
			echo "alert('登出成功');";
			echo "location.href='index1.php';";
			echo "</script>";
		}
	} 

?>
