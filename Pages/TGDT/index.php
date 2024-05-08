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
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Thế giới di động</title>
	<!-- link css + js -->
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
				<img src="image/logo.png" alt="" height="50px">
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
		<div class="container">
			<div class="product__wrap">
				<?php 
					$sql_sanpham = mysqli_query($conn, "SELECT * FROM tbl_sanpham");
					while($row_product=mysqli_fetch_array($sql_sanpham)) {
				?>
				<div class="product-detail">
					<a href="detail.php?id=<?php echo $row_product['SanPham_id'] ?>">
						<img src="<?php echo $row_product['HinhAnh'] ?>" alt="">
						<h5><?php echo $row_product['TenSanPham'] ?></h5>
						<p><?php echo $row_product['DonGiaKhuyenMai'] ?></p>
					</a>
				</div>
				<?php 
					}
				?>
			</div>
		</div>
		
	</body>
	</html>