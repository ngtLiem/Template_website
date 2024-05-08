<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "thegioididong";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    }

    mysqli_set_charset($conn,"utf8");
?>

<?php 
    if(isset($_GET['id'])) {
        $id = $_GET['id'];
    } else {
        $id = '';
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết sản phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/all.css">
	<link rel="stylesheet" type="text/css" href="css/all.min.css">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
    <!-- narbar -->
	<div class="nav">
		<div class="container">
			<div class="bg">
				<a href="index.php"><img src="image/logo.png" alt="" height="50px"></a>
				<form action="">
					<div class="search">
						<input class="input1" type="text" name="seach" placeholder="Bạn cần gì..." size="30px">
						<button id="b"><i class="fa fa-search"></i></button>
					</div>
				</form>
			</div>
			<div class="menu">
				<div class="menu-item">
					<div class="item">
						<a href="" class="fas fa-mobile-alt size"><div class="txt">Điện thoại</div></a>

					</div>
				</div>
				<div class="menu-item">
					<div class="item">
						<a href="" class="fas fa-tablet-alt size"><div class="txt">Tablet</div></a>

					</div>
				</div>
				<div class="menu-item">
					<div class="item">
						<a href="" class="fas fa-laptop size"><div class="txt">Laptop</div></a>

					</div>
				</div>
				<div class="menu-item">
					<div class="item">
						<a href="" class="fas fa-headphones-alt size"><div class="txt">Phụ kiện</div></a>
					</div>
				</div>
			</div>
			<div class="user">
				<div class="menu-item">
					<div class="item">
						<a class="txt" href="">
							Đăng nhập
						</a>
					</div>
				</div>
				<div class="menu-item carts">
					<ul>
						<li class="">
							<a href="" class="fas fa-cart-plus size"><div class="txt">Giỏ hàng</div></a>
							<div class="carts-list">
								<a href="">aaaaa</a>
								<a href="">bbbb</a>
								<a href="">aaaaabbbb</a>
								<a href="">aaaaabbbb</a>
								<a href="">aaaabbbb</a>
							</div>	
						</li>
					</ul>
				</div>			
			</div>
		</div>
		<!-- slide -->
		<div class="container">
			<div class="slides bgr">
				<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block " src="image/slide1.png" width="100%">
						</div>
						<div class="carousel-item">
							<img class="d-block " src="image/slide2.png" width="100%">
						</div>
						<div class="carousel-item">
							<img class="d-block " src="image/slide3.png" width="100%">
						</div>
						<div class="carousel-item">
							<img class="d-block " src="image/slide4.png" width="100%">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>		
		</div>
		<!-- sản phẩm sale -->
		<div class="container">
			<div class="commercial bgr">
				<img src="image/card.jpg" width="100%" alt="">
            </div>
        </div>
        
        <div class="container one">
            <?php 
                $sql_spec = mysqli_query($conn, "SELECT * FROM tbl_sanpham WHERE tbl_SanPham.SanPham_id='$id'");
                while($row_info = mysqli_fetch_array($sql_spec)) {
            ?>

            <div class="detail">
                <div class="detail-wrap">
                    <div class="name-mobile">
                        <h4>Điện thoại <?php echo $row_info['TenSanPham'] ?></h4>
                    </div>

                    <div class="detail__img">
                        <img src="<?php echo $row_info['HinhAnh'] ?>" alt="">
                    </div>
                </div>

                <div class="detail__spec">
                    <div class="detail__spec-head">
                        <h2>Thông số kĩ thuật</h2>
                    </div>
                    
                    <div class="detail__info">
                        <ul class="detail__info-list">
                            <li class="detail__info-item">
                                <p>Màn hình</p>
                                <div><?php echo $row_info['ManHinh'] ?></div>
                            </li>

                            <li class="detail__info-item">
                                <p>Hệ điều hành</p>
                                <div><?php echo $row_info['HeDieuHanh'] ?></div>
                            </li>

                            <li class="detail__info-item">
                                <p>Camara sau</p>
                                <div><?php echo $row_info['CameraSau'] ?></div>
                            </li>

                            <li class="detail__info-item">
                                <p>Camara trước</p>
                                <div><?php echo $row_info['CameraTruoc'] ?></div>
                            </li>

                            <li class="detail__info-item">
                                <p>CPU</p>
                                <div><?php echo $row_info['CPU'] ?></div>
                            </li>

                            <li class="detail__info-item">
                                <p>RAM</p>
                                <div><?php echo $row_info['RAM'] ?></div>
                            </li>

                            <li class="detail__info-item">
                                <p>Bộ nhớ trong</p>
                                <div><?php echo $row_info['ROM'] ?></div>
                            </li>

                            <li class="detail__info-item">
                                <p>Thẻ nhớ</p>
                                <div><?php echo $row_info['SDCard'] ?></div>
                            </li>

                            <li class="detail__info-item">
                                <p>Dung lượng pin</p>
                                <div><?php echo $row_info['Pin'] ?></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <?php 
                }
            ?>
        </div>
    </div>
        
</body>
</html>