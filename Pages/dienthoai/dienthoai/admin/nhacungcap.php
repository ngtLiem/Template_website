<link rel="stylesheet" href="css/sanpham2.css"> 
<script type="text/javascript" src="js/checkbox.js"></script>
<?php
	include ('../include/connect.php');
	
    $select = "select * from nhacungcap";
    $query = mysql_query($select);
    $dem = mysql_num_rows($query);
?>
	<h2>Nhà cung cấp</h2>
<div class="nhacungcap">

	<form action="admin.php?admin=xulyncc" method="post">
		<div id="themncc">
			<a href='?admin=themncc' >Thêm nhà cung cấp</a>
		</div>
		
</div>
<table>
    
    <tr class='tieude_hienthi_sp'>
		<td style="width:70px;">ID NCC</td>
        <td>Tên NCC</td>
        <td>Email</td>
        <td>SĐT</td>
        <td>Địa chỉ</td>
        <td style="width:80px;">Sửa</td>
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

		$sql = mysql_query("SELECT * FROM nhacungcap "); 



								
    if($dem > 0)
        while ($bien = mysql_fetch_array($sql))
        {
?>
            <tr class='noidung_hienthi_sp'>
                <td class="masp_hienthi_sp"><?php  echo $bien['idncc'] ?></td>
				<td class="sl_hienthi_sp"><?php echo $bien['tenncc'] ?></td>
				<td class="sl_hienthi_sp"><?php echo $bien['email'] ?></td>
                <td class="sl_hienthi_sp"><?php echo $bien['sdt'] ?></td>
                <td class="sl_hienthi_sp"><?php echo $bien['diachi'] ?></td>
                <td class="active_hienthi_sp">
					<a href='admin.php?admin=suancc&idncc=<?php echo $bien['idncc']  ?>'><img src="img/sua1.png" title="Sửa"></a>
					<?php echo "<p onclick = 'checkdel({$bien['idncc'] })' ><img src='img/xoa1.png' title='Xóa' class='delete'></p>" ?>
				</td>
            </tr>
<?php 
    }
	
    else echo "<tr><td colspan='7'>Không có nhà cung cấp nào trong CSDL</td></tr>";
	
?>
</table>
</form>
	<div id="phantrang_sp">
	
	<?php
			// Tính tổng kết quả trong toàn DB:  
			$total_results = mysql_result(mysql_query("SELECT COUNT(*) as Num FROM nhacungcap"),0);  

			// Tính tổng số trang. Làm tròn lên sử dụng ceil()  
			$total_pages = ceil($total_results / $max_results);  


			// Tạo liên kết đến trang trước trang đang xem 
			if($page > 1){  
			$prev = ($page - 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?admin=hienthincc&page=$prev\"><button class='trang'><<</button></a>&nbsp;";  
			}  

			for($i = 1; $i <= $total_pages; $i++){  
			if(($page) == $i){  
				if($i>1) {
						echo "$i&nbsp;";  } 
				
			} else {  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?admin=hienthincc&page=$i\"><button class='so'>$i</button></a>&nbsp;";  
			}  
			}  

			// Tạo liên kết đến trang tiếp theo  
			if($page < $total_pages){  
			$next = ($page + 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?admin=hienthincc&page=$next\"><button class='trang'>>></button></a>";  
			}  
			echo "</center>";  		
		
	?>
	</div>
	<script language="JavaScript">
    function checkdel(idncc)
    {
        var	idncc=idncc;
        var link="xoa_ncc.php?idncc="+idncc;
        if(confirm("Bạn có chắc chắn muốn xóa nhà cung cấp này?")==true)
            window.open(link,"_self",1);
    }
	</script>
