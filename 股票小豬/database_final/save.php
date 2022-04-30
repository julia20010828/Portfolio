<?php
    session_start();

    include ("Yv_登入/connection.php");

    $mId = $_SESSION["mId"];
    $sId = $_POST['sId_sName'];	
    $sName = $_POST['sId_sName'];

    $sql_query1 = "SELECT * FROM stock";
    $sql_query2 = "SELECT * FROM favorite";

    $result1 = mysqli_query($con, $sql_query1);
    $result2 = mysqli_query($con, $sql_query2);
    $flag = 0;

    while ($row1 = mysqli_fetch_array($result1, MYSQLI_BOTH)) {
        if($sId == $row1["代號"] || $sName == $row1["名稱"]){
            $sId = $row1["代號"];
            $sName = $row1["名稱"];
            $sPrice = $row1["成交"];
            while($row2 = mysqli_fetch_array($result2, MYSQLI_BOTH)){
                if($mId == $row2['mId'] && $sId == $row2['sId']){
                    $sql_query3 = "DELETE FROM `favorite` WHERE `mId` = '$mId' AND `sId` = '$sId'";     
                    mysqli_query($con, $sql_query3);
                    $flag = 1; 
                    //echo '456';
                    break;
                }                   
            }
            if($flag == 0){
                $buyPrice = 0;
                $sql_query2 = "INSERT INTO favorite(mId, sId, buyPrice) VALUES ('$mId', '$sId', '$buyPrice')";                   
                mysqli_query($con, $sql_query2);
                //echo '123';
                break;
            }
        }
    }
    // 釋放記憶體
    mysqli_free_result($result1);
    mysqli_free_result($result2);

    // 關閉連線
    mysqli_close($con);

    header("Location: save_page.php");
?>