<?php
    session_start();

    include ("Yv_登入/connection.php");

    $mId = $_SESSION["mId"];
    $buyPrice = $_POST["buyPrice"];
    $sId = $_POST["sId"];	

    $sql_query = "UPDATE favorite SET `buyPrice` = $buyPrice WHERE `mId` = $mId AND `sId` = $sId";

    $result = mysqli_query($con, $sql_query);

    // 釋放記憶體
    mysqli_free_result($result);

    // 關閉連線
    mysqli_close($con);

    header("Location: save_page.php");
?>