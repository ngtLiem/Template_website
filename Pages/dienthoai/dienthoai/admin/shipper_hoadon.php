<link rel="stylesheet" href="css/sanpham2.css">
<script type="text/javascript" src="js/checkbox.js"></script>
<?php
	include ('../include/connect.php');
    $select = "select * from hoadon where trangthai=4";
    $query = mysql_query($select);
    $dem = mysql_num_rows($query);
?>
<div class="quanlysp">
	<h2>DANH SÁCH ĐƠN HÀNG</h2>
	<form action="shipper.php?shipper=xulyhd" method="post">
		<div id="checksp">
			<p>
				<input type="submit" name="giaohang" value="Đã giao hàng" />
				<input type="submit" name="huy" value="Hủy" />
				<input type="submit" name="xoa" value="Xóa" />

			</p>
		</div>
	
</div>
<table>
    
    <tr class='tieude_hienthi_sp'>
        <td>Mã HD</td>
        <td>Họ Tên</td>
        <td>Địa Chỉ</td>
        <td>Điện Thoại</td>
        <td>Email</td>
        <td>Trạng thái</td>
        <td colspan=2>Chi tiết</td>
    </tr>

    <?php
	
	/*------------Phan trang------------- */
		// Nếu đã có sẵn số thứ tự của trang thì giữ nguyên (ở đây tôi dùng biến $page) 
		// nếu chưa có, đặt mặc định là 1!   

		if(!isset($_GET['page'])){  
		$page = 1;  
		} else {  
		$page = $_GET['page'];  
		}  

		// Chọn số kết quả trả về trong mỗi trang mặc định là 10 
		$max_results = 10;  

		// Tính số thứ tự giá trị trả về của đầu trang hiện tại 
		$from = (($page * $max_results) - $max_results);  

		// Chạy 1 MySQL query để hiện thị kết quả trên trang hiện tại  

		$sql = mysql_query("SELECT * FROM hoadon WHERE trangthai=4 ORDER by mahd DESC  LIMIT $from, $max_results"); 



								
    if($dem > 0)
        while ($bien = mysql_fetch_array($sql))
        {
?>
            <tr class='noidung_hienthi_sp'>
                <td class="masp_hienthi_sp"><?php  echo $bien['mahd'] ?></td>
                <td class="stt_hienthi_sp"><?php echo $bien['hoten'] ?></td>
				<td class="sl_hienthi_sp"><?php echo $bien['diachi'] ?></td>
				<td class="sl_hienthi_sp">0<?php echo $bien['dienthoai'] ?></td>
				<td class="sl_hienthi_sp"><?php echo $bien['email'] ?></td>
				<td class="sl_hienthi_sp"><?php if($bien['trangthai']==4) echo "Chưa giao hàng"; else if($bien['trangthai']==2) echo"Đã giao hàng"?></td>
				<td class="active_hienthi_sp" style="width:70px;"><a href="shipper.php?shipper=chitiethoadon&mahd=<?php echo $bien['mahd']; ?> " style="float:left;"><?php echo "<img src='img/detail.png' title='chi tiết đơn hàng' class='chitiet'>" ?></a>				
				</td>
            </tr>
<?php 
    }
	
    else echo "<tr><td colspan='8'>Bạn không có đơn hàng nào</td></tr>";
	
?>
</table>
</form>
	<div id="phantrang_sp">
	
	<?php
			// Tính tổng kết quả trong toàn DB:  
			$total_results = mysql_result(mysql_query("SELECT COUNT(*) as Num FROM hoadon"),0);  

			// Tính tổng số trang. Làm tròn lên sử dụng ceil()  
			$total_pages = ceil($total_results / $max_results);  


			// Tạo liên kết đến trang trước trang đang xem 
			if($page > 1){  
			$prev = ($page - 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?shipper=hienthihd&page=$prev\"><button class='trang'>Trang trước</button></a>&nbsp;";  
			}  

			for($i = 1; $i <= $total_pages; $i++){  
			if(($page) == $i){  
			echo "$i&nbsp;";  
			} else {  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?shipper=hienthihd&page=$i\"><button class='so'>$i</button></a>&nbsp;";  
			}  
			}  

			// Tạo liên kết đến trang tiếp theo  
			if($page < $total_pages){  
			$next = ($page + 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?shipper=hienthihd&page=$next\"><button class='trang'>Trang sau</button></a>";  
			}  
			echo "</center>";  		
		
	?>
	</div>
