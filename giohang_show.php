<?php
session_start();
include('database/connect.php');
if(isset($_POST['test1']))
{
    $show_giohang=mysqli_query($con,"SELECT * FROM db_giohang");
    $i=1;
    $subtotal=0;
    $tong=0;
    while($row_show_giohang=mysqli_fetch_array($show_giohang))
    {
        $subtotal=$row_show_giohang['giasanpham']*$row_show_giohang['soluong'];
        $tong=$tong+$subtotal;
    echo "
    <tr>
							<td class='cart_product'>
								<a href='product-details.php?id='><img src='images/cart/".$row_show_giohang['hinhanh']."' alt=''></a>
							</td>
							<td class='cart_description'>
								<h4><a href='product-details.php'>".$row_show_giohang['tensanpham']."</a></h4>
								<p>Web ID:".$row_show_giohang['sanpham_id']."</p>
							</td>
							<td class='cart_price'>
								<p>".$row_show_giohang['giasanpham'].'$'."</p>
							</td>
							<td class='cart_quantity'>
								<div class='cart_quantity_button'>
									
									
									<input class='cart_quantity_input' id='soluong_item_giohang' min='1' id_slgh=".$row_show_giohang['sanpham_id']." type='number' value=".$row_show_giohang['soluong']."   >
								</div>
							</td>
							<td class='cart_total'>
								<p class='cart_total_price'>".$subtotal.'$'."</p>
							</td>
							<td class='cart_delete'>
								<input style='width: 50px;' id_xoa=".$row_show_giohang['sanpham_id']." class='btn btn-danger xoa_item_giohang' type='button' value='Xóa'>
							</td>
						</tr>
                        ";
    }
}
