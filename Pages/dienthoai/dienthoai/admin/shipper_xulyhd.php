<?php
	if(isset($_POST['id']))
	{
	foreach($_POST['id'] as $mahd)
	{
		$_SESSION['id'][$mahd]=1;
	}
	

		if(isset($_POST['giaohang']))
		{
			foreach($_SESSION['id'] as $mahd=>$value)
			{
				if ($value==1)
				$sql="update hoadon set trangthai=2 where mahd='$mahd'";
				mysql_query($sql);
				unset($_SESSION['id']);
				echo "
							<script language='javascript'>
								alert('Đã giao hàng');
								window.open('shipper.php?shipper=hienthihd','_self', 1);
							</script>
						";
			}
		}
		else if(isset($_POST['huy']))
			{ 
				foreach($_SESSION['id'] as $mahd=>$value)
				{
					foreach ($_SESSION['cart'] as $stt => $soluong) {
						if ($value==1)
						$sql="update hoadon set trangthai=3 where mahd='$mahd'";
						mysql_query($sql);
						$sql1="select * from sanpham where idsp=$stt";
						$rows=mysql_query($sql1);
						$row=mysql_fetch_array($rows);
						$ban=$row['daban']-$soluong;
						$sql2="UPDATE sanpham SET daban='$ban' WHERE idsp = $stt";
						mysql_query($sql2);
						unset($_SESSION['id']);
						echo "
								<script language='javascript'>
									alert('Đã huỷ đơn hàng');
									window.open('shipper.php?shipper=hienthihd','_self', 1);
								</script>
							";
					}

				}
			}
			else
					{
						foreach($_SESSION['id'] as $mahd=>$value)
						{
							if ($value==1)
							$sql="delete from hoadon where mahd='$mahd'";
							mysql_query($sql);
							$sql1="delete from chitiethoadon where mahd='$mahd'";
							mysql_query($sql1);
							unset($_SESSION['id']);
							echo "
							<script language='javascript'>
								alert('Xóa thành công');
								window.open('shipper.php?shipper=hienthihd','_self', 1);
							</script>
						";
						}
			
					}

			}		else echo "
							<script language='javascript'>
								alert('Bạn chưa chọn hóa đơn cần xử lý');
								window.open('shipper.php?shipper=hienthihd','_self', 1);
							</script>
						";
		
?>