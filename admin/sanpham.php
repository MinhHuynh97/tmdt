<?php
include_once('../database/connect.php');

if(isset($_POST['themsanpham']))
    {
        $tensanpham=$_POST['tensanpham'];
       
        $chitiet=$_POST['chitiet'];
        
        $mota=$_POST['mota'];
        
        $hinhanh=$_FILES['hinhanh']['name'];
        
        $hinhanh_tmp=$_FILES['hinhanh']['tmp_name'];
        
        $giasanpham=$_POST['giasanpham'];
        
        $status=$_POST['status'];
        
        
        $danhmuc=$_POST['danhmuc'];
        $brand=$_POST['brand'];
        $soluong=$_POST['soluong'];
        $path='../images/product-details/';
        $sql_insert_sanpham=mysqli_query($con,"INSERT INTO db_sanpham(sanpham_name,sanpham_chitiet,sanpham_mota,sanpham_img,sanpham_gia,sanpham_status,category_id,brand_id,sanpham_soluong) 
        values ('$tensanpham','$chitiet','$mota','$hinhanh','$giasanpham','$status','$danhmuc','$brand','$soluong')");
        move_uploaded_file($hinhanh_tmp,$path.$hinhanh);
    }
?>

<div style="max-width: 95%;" class="container">
        <div style="margin-top: 10px;" class="row">
            <div class="col-md-3">
                <h4 style="text-align: center;font-size:30px">Thêm sản phẩm</h4>
                <form action="" method="POST" enctype="multipart/form-data">
                   
                    <input type="text" placeholder="Tên sản phẩm" class="form-control" name="tensanpham">
                    
                    <input type="text" placeholder="Số lượng" class="form-control" name="soluong">
                    
                    <textarea name="chitiet" class="form-control" placeholder="Chi tiết"></textarea>
                    
                    <textarea name="mota" class="form-control" placeholder="Mô tả"></textarea>
                    
                    <input type="file" placeholder="Thêm hình ảnh" name="hinhanh" class="form-control">
                    
                    <input type="text" placeholder="Giá sản phẩm" class="form-control" name="giasanpham">
                    
                    
                    
                    <select name="danhmuc" class="form-control">
                        <option value="">----Chọn category----</option>
                        <?php
                            $sql_select_danhmuc=mysqli_query($con,"SELECT * from db_categories order by category_id desc");
                            while($row_select_danhmuc=mysqli_fetch_array($sql_select_danhmuc)){
                        ?>
                        <option value="<?php echo $row_select_danhmuc['category_id'] ?>"><?php echo $row_select_danhmuc['category_name'] ?></option>
                        <?php
                            }
                        ?>
                    </select><br>
                    <select name="brand" class="form-control">
                        <option value="">----Chọn Brand----</option>
                        <?php
                            $sql_select_danhmuc=mysqli_query($con,"SELECT * from db_brands order by brand_id desc");
                            while($row_select_danhmuc=mysqli_fetch_array($sql_select_danhmuc)){
                        ?>
                        <option value="<?php echo $row_select_danhmuc['brand_id'] ?>"><?php echo $row_select_danhmuc['brand_name'] ?></option>
                        <?php
                            }
                        ?>
                    </select><br>
                    <select name="status" class="form-control">
                        <option value="">----Chọn Status----</option>
                        <option value="1">New</option>
                        <option value="2">Hot</option>
                        <option value="3">Sales</option>
                    </select><br>
                    <center><input  type="submit" class="btn btn-success" name="themsanpham" value="Thêm sản phẩm"></center>
                </form>
                
                
                
            </div>
            <div class="col-md-9">
                <h4 style="text-align:center;font-size:30px">Liệt kê danh mục</h4>
                <table style="text-align:center" class="table table-bordered align-middle ">
                    <tr>
                        <th>Thứ tự</th>
                        <th>Tên sản phẩm </th>
                        <th>Hình ảnh</th>
                        <th>Số lượng</th>
                        <th>Giá sản phẩm</th>
                        <th>Danh mục</th>
                        <th>Brand</th>
                        <th>Quản lý</th>
                    </tr>
                    <?php
                    $i=0;
                    $sql_view=mysqli_query($con,"SELECT * from db_sanpham as sp,db_categories as cate, db_brands as br where sp.category_id=cate.category_id and sp.brand_id=br.brand_id order by sp.sanpham_id desc  ");
                    while($row_view=mysqli_fetch_array($sql_view)){
                        $i++;
                    ?>
                    <tr
                    <?php 
                            if(isset($_GET['sua'])){
                            if($_GET['sua']==$row_view['sanpham_id'])
                            {
                                
                                $a='style="background-color: antiquewhite;"';
                                echo $a;
                            } }
                        ?>
                    >
                        
                        <td><?php echo $i ?></td>
                        <td><?php echo $row_view['sanpham_name'] ?></td>
                        <td><img style="max-width: 154px; max-height:95px;" src="../images/product-details/<?php echo $row_view['sanpham_img'] ?>" alt="chưa load"> </td>
                        <td><?php echo $row_view['sanpham_soluong'] ?></td>
                        <td><?php echo $row_view['sanpham_gia']." $" ?></td>
                        <td><?php echo $row_view['category_name'] ?></td>
                        <td><?php echo $row_view['brand_name'] ?></td>
                        <td>
                            <a class="btn btn-danger" role="button" href="?quanly=sanpham&xoa=<?php echo $row_view['sanpham_id'] ?>" >Xóa</a>
                            <a class="btn btn-primary" role="button" href="?quanly=sanpham&sua=<?php echo $row_view['sanpham_id'] ?>" >Sửa</a>
                        </td>

                    </tr>
                    <?php
                    }
                    ?>
                </table>
            </div>
        </div>
    </div>
