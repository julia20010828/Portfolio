<?php
    session_start();

    include ("Yv_登入/connection.php");

    $mId = $_SESSION["mId"];

    if(!isset($_SESSION["mId"])){
        header("Location: Yv_登入/index.php");
    }
    
    $stock_sql = "SELECT * FROM `stock` INNER JOIN `favorite` WHERE `mId` = $mId AND 代號 = sId";

    $stock_result = mysqli_query($con, $stock_sql);
    $stock_resultCheck = mysqli_query($con, $stock_sql);

    if(is_null(mysqli_fetch_row($stock_resultCheck))){
        $stock = 0;
    }else{
        while ($row = mysqli_fetch_row($stock_result)){
            $stock[] = $row;
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>收藏股票</title>

    <!-- css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/all.css">
    <!-- javascript -->
    <script src="javascript/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <style type="text/css">
        *,*:before,*:after{
            box-sizing: border-box;
        }
        .wrap{
            background-color: #cae9ff;
            width: 100%;
            /* margin: 5px; */
        }
        .stock a{
            color: black;
            display: block;
            text-decoration: none;
        }
        .login{
            padding: 20px;
            background-color: #cae9ff;
        }
        .hello{
            padding: 20px;
            background-color: #cae9ff;
        }
        .hello button{
            margin-left: 20px;
        }
        .save{
            margin: 0 auto;
            background-color: #cae9ff;
            width: 890px;
            margin-bottom: 25px;
        }
        .stock{
            box-shadow: 5px 5px 5px gray;
            border: 3px solid lightgray;
            padding: 10px 0;
            margin: 10px;
            border-radius: 20px;
            text-align: center;
            position: relative;
        }
        .stock .da_ma{
            position: absolute;
            padding: 10px 0;
            border-radius: 20px;
            text-align: center;
            background-color: #84d2f6;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            display: none;
            color: gray;
        }
        .stock p{
            margin-bottom: 0;
            font-size: 2vw;
        }
        /* .stock button{
            position: absolute;
            right: 10px;
            bottom: 10px;
        } */
        .stock form input{
            width: 150px; 
            margin: 15px auto 5px;
        }
        .active-button{
            background-color: #dc3545;
            color: white;
        }
        .content{
            background-color: #cae9ff;
        }
        .container.custom-container-width {
            max-width: 1010px;       // 最後內容寬會是 980px
        }
        .active{
            display: block;
        }
        .none{
            text-align: center;
            padding: 20px;
            font-size: 36px;
            background-color: #0077b6;
            margin-bottom: 0px;
            color: white;
        }
        .footer{
            background-color: #90e0ef;
            width: 100%; 
            position: absolute; 
            left: 0;
        }
        .footer-content {
            padding: 20px 0;
            padding-left: 200px;
            /* color: #cccccc; */
        }
        .footer-content p{
            font-size: 36px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            // $('.stock a').click(function (e) { 
            //     e.preventDefault();
            // });
            $('.stock').hover(function () {
                    // $(this).find('.info').css({'background-color': 'gray', "opacity": "50%"});
                    $(this).find('.da_ma').slideDown();
                }, function () {
                    $(this).find('.da_ma').slideUp();
                }
            );
            // $('.stock button').click(function () { 
            //     let m_price = prompt("請輸入您願意購買此股票的最高一股價格");
            //     location.href="update.php?buyPrice=" + m_price;
            //     // $.ajax({
            //     //     type: "GET",
            //     //     url: "save.php",
            //     //     data: "{buyPrice:m_price}",
            //     //     //dataType: "dataType",
            //     //     success: function (data) {
            //     //         alert(data);
            //     //     }
            //     // });
            //     // return false;
            // });
        });
    </script>

</head>
<body>
    <div class="wrap">
        <div style="width: 100%;height: 56px;"></div> <!-- 隱藏在nav後面 -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.php" style="margin-left: 34px;">股票小豬</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                    <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="stock_info.php">首頁</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="#">股市討論區</a>
                    </li>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="save_page.php">我的收藏</a>
                    </li>
                    <!-- <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        我的收藏
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Link</a>
                    </li> -->
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="輸入股票代號或名稱" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                </div>
            </div>
        </nav>
        <?php
            if(!isset($_SESSION['mId'])){  ?>
                <div class="login">
                    <a href="Yv_登入/login.php"><button class="btn">登入</button></a>
                    <a href="Yv_登入/signup.php"><button class="btn btn-outline-info">免費註冊</button></a>                    
                </div> 
            <?php
            }else{  ?>
                <div class="hello">
                    <p>Hello, <?php echo $_SESSION['name']; ?><a href="Yv_登入/logout.php"><button class="btn btn-outline-info">Logout</button></a></p>                       
                </div>
            <?php     
            }
        ?>
        <form class="d-flex save" action="save.php" method="POST">
            <input class="form-control me-2" type="search" name="sId_sName" placeholder="請輸入想要收藏或是刪除的股票代號或名稱" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">submit</button>
        </form>
        <?php
        if($stock != 0){
        ?>
        <?php
            for($i = 0; $i < count($stock); ){
        ?>
        <div class="content">
            <div class="container custom-container-width">
                <div class="row">
                    <?php
                        if($i >= count($stock)){break;}
                    ?>
                    <div class="col-sm-12 col-md col-lg stock">
                        <a href="#" class="info">                        
                            <p class="name"><span style="font-size: 20px"><?php echo "{$stock[$i][0]}"; ?> </span><?php echo "{$stock[$i][1]}"; ?></p>
                            <p class="price"><?php echo "成交價 {$stock[$i][4]}"; ?></p>
                            <p><?php echo "欲購買價格 {$stock[$i][18]}";?></p>
                            
                            <form action="update.php" method="POST">
                                <input type="hidden" name="sId" value=<?php echo "{$stock[$i][0]}"; ?>>
                                <input class="form-control" type="text" name="buyPrice" placeholder="理想購買價">
                                <button type="submit" class="btn btn-outline-danger">修改價格</button>
                            </form>
                        </a>
                    </div>
                    <?php
                        $i++;
                        if($i >= count($stock)){break;}
                    ?>
                    <div class="col-sm-12 col-md col-lg stock">
                        <a href="#" class="info">                        
                            <p class="name"><span style="font-size: 20px"><?php echo "{$stock[$i][0]}"; ?> </span><?php echo "{$stock[$i][1]}"; ?></p>
                            <p class="price"><?php echo "成交價 {$stock[$i][4]}"; ?></p>
                            <p><?php echo "欲購買價格 {$stock[$i][18]}";?></p>
                            
                            <form action="update.php" method="POST">
                                <input type="hidden" name="sId" value=<?php echo "{$stock[$i][0]}"; ?>>
                                <input class="form-control" type="text" name="buyPrice" placeholder="理想購買價">
                                <button type="submit" class="btn btn-outline-danger">修改價格</button>
                            </form>
                        </a>
                    </div>
                    <?php
                        $i++; 
                        if($i >= count($stock)){break;}
                    ?>
                    <div class="col-sm-12 col-md col-lg stock">                        
                        <a href="#" class="info">                        
                            <p class="name"><span style="font-size: 20px"><?php echo "{$stock[$i][0]}"; ?> </span><?php echo "{$stock[$i][1]}"; ?></p>
                            <p class="price"><?php echo "成交價 {$stock[$i][4]}"; ?></p>
                            <p><?php echo "欲購買價格 {$stock[$i][18]}";?></p>
                            
                            <form action="update.php" method="POST">
                                <input type="hidden" name="sId" value=<?php echo "{$stock[$i][0]}"; ?>>
                                <input class="form-control" type="text" name="buyPrice" placeholder="理想購買價">
                                <button type="submit" class="btn btn-outline-danger">修改價格</button>
                            </form>
                        </a>
                    </div>
                    <?php
                        $i++; 
                        if($i >= count($stock)){break;}
                    ?> 
                    <div class="col-sm-12 col-md col-lg stock">                       
                        <a href="#" class="info">                        
                            <p class="name"><span style="font-size: 20px"><?php echo "{$stock[$i][0]}"; ?> </span><?php echo "{$stock[$i][1]}"; ?></p>
                            <p class="price"><?php echo "成交價 {$stock[$i][4]}";?></p>
                            <p><?php echo "欲購買價格 {$stock[$i][18]}";?></p>
                            
                            <form action="update.php" method="POST">
                                <input type="hidden" name="sId" value=<?php echo "{$stock[$i][0]}"; ?>>
                                <input class="form-control" type="text" name="buyPrice" placeholder="理想購買價">
                                <button type="submit" class="btn btn-outline-danger">修改價格</button>
                            </form>
                        </a>
                        <?php $i++; ?>
                    </div>
                </div>
            </div>
        </div>
        <?php
            }
        ?>
        <?php
        }
        else{
            echo '<script> alert ("您尚未收藏任何股票") </script>';   ?>
            <p class="none">尚未收藏股票</p>
        <?php
        }
        ?>
    </div>
    <div class="footer">
        <div class="footer-content">
            <p>股票小豬</p>
            <span>804高雄市鼓山區蓮海路70號</span><br>
            <span>國立中山大學 資訊管理學系</span><br>
            <span>07-525-2000</span><br>
        </div>
        <span style="text-align: center; display: block; padding: 30px;">Copyright © 2021 DBMS team number 8. All rights reserved.</span>
    </div>
</body>
</html>