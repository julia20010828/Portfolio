<?php 
	include_once "connection.php";
    session_start();
		
	switch ($_GET["method"]) {
		case "add":
			add();
			break;
		case "update":
			update();
			break;
		case "del":
			del();
			break;
		default:
			break;
	}

	function add(){
		$mid = $_SESSION["id"];
		$topic = $_POST["topic"];
		$content = $_POST["content"];
		$sql = "INSERT INTO `discussion` (mid, topic, content)
		VALUES ('$mid', '$topic', '$content')";
		global $con;
		$result = mysqli_query($con , $sql) or die('MySQL query error');
		echo "<script type='text/javascript'>";
		echo "alert('新增留言成功');";
		echo "location.href='index1.php';";
		echo "</script>";
	}

	function update(){
		$id = $_GET["id"];
		$topic = $_POST["topic"];
		$content = $_POST["content"];
		$sql = "UPDATE `discussion` SET topic = '$topic', content = '$content' WHERE id = $id";
		global $con;
		$result = mysqli_query($con , $sql) or die('MySQL query error');
		echo "<script type='text/javascript'>";
		echo "alert('編輯留言成功');";
		echo "location.href='index1.php';";
		echo "</script>";
	}

	function del(){
		$id = $_GET["id"];
		$sql = "DELETE FROM `discussion` WHERE id = $id";
		global $con;
		$result = mysqli_query($con , $sql) or die('MySQL query error');
		echo "<script type='text/javascript'>";
		echo "alert('刪除留言成功');";
		echo "location.href='index1.php';";
		echo "</script>";
	}

?>