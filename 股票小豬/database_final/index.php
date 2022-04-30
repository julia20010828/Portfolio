<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- css -->    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/all.css">

    <!-- javascript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>


    <title>股票小豬</title>
    <style type="text/css">
        .hello button{
            margin-left: 20px;
        }
        .content-mid{
            background-color: #0077b6;
            color: white;
        }
        .footer{
            background-color: #90e0ef;
        }
        .footer-ct {
            padding: 20px 0;
            padding-left: 200px;
            /* color: #cccccc; */
        }
        .footer-ct p{
            font-size: 36px;
        }
	</style>
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
                    <li class="nav-item">
                    <a class="nav-link" href="save_page.php">我的收藏</a>
                    </li>
                    <!-- <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="favorite.php" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        我的收藏
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                    </li> -->
                    <!-- <li class="nav-item">
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
            <div class="content">
                <div class="content-top">
                    <?php
                        if(!isset($_SESSION['mId'])){  ?>
                            <div class="log-sign">
                                <a href="Yv_登入/login.php"><button class="btn">登入</button></a>
                                <a href="Yv_登入/signup.php"><button class="btn btn-outline-info">免費註冊</button></a>                    
                            </div> 
                    <?php
                        }else{  ?>
                            <div class="log-sign hello">
                                <p>Hello, <?php echo $_SESSION['name']; ?><a href="Yv_登入/logout.php"><button class="btn btn-outline-info">Logout</button></a></p>                       
                            </div>
                    <?php     
                        }
                    ?>
                    <div class="box">
                        <h2>想知道更多股票資訊嗎？<br>一起來加入我們吧！</h2>
                    </div>
                </div>
                <div class="content-mid">
                    <div class="function">
                        <h3>查詢每間上市公司的收盤與開盤</h3>
                        <p>每天從台灣證券交易所的網站撈取最新的股票交易資訊<br>提供給您對股票做進一步的判斷與分析</p>
                    </div>
                    <div class="function">
                        <h3>收藏您有興趣的股票種類</h3>
                        <p>收藏時輸入您欲購買價格<br>幫您紀錄您想要的價格</p>
                    </div>
                    <div class="function">
                        <h3>股市討論版</h3>
                        <p>在討論版發表看法<br>瀏覽其他使用者對目前股市之分析</p>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="footer-ct">
                    <p>股票小豬</p>
                    <span>804高雄市鼓山區蓮海路70號</span><br>
                    <span>國立中山大學 資訊管理學系</span><br>
                    <span>07-525-2000</span><br>
                </div>
                <span style="text-align: center; display: block; padding: 30px;">Copyright © 2021 DBMS team number 8. All rights reserved.</span>
            </div>
    </div>
</body>
</html>