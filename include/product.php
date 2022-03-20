<?php
include('database/connect.php');
if(isset($_GET['category'])){
	$category = $_GET['category'];  	
	$id;
	$sql_temp = mysqli_query($con, "SELECT * FROM categories "); // bool
	while($res = mysqli_fetch_array($sql_temp))
	{
		if ($res['name']== $category)
			$id = $res['id'];
		else
			continue;
	}
	
	$sql_product = mysqli_query($con, "SELECT * FROM clothes WHERE $id = category");
}
else $sql_product = mysqli_query($con, "SELECT * FROM clothes ORDER BY category");
?>
<div class="col-sm-9 padding-left ">
	<div class="row features_items">
		<!--features_items-->
		<h2 class="title text-center">Features Items</h2>
		<?php
		if (mysqli_num_rows($sql_product) > 0) {
			while ($product = mysqli_fetch_array($sql_product)) {
		?>
				<div class="col-sm-4">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src=" <?php echo  $product['img'] ?> " alt="Hình ảnh sản phẩm" />
								<h2> $ <?php echo $product['price'] ?></h2>
								<p > <?php $title= $product['title'];
									if (str_word_count($title)>4 ){
									$piece= explode(" ",$title);
									$title = implode(" ", array_splice($piece, 0, 4));
									echo "$title ...";}
									else echo $title;
									?></p>
								<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
							</div>
							<div class="product-overlay">
								<div class="overlay-content">
									<h2> $ <?php echo $product['price'] ?></h2>
									<p > <?php echo $product['title'] ?> </p>

									<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
							
						</div>
						<div class="choose">
							<ul class="nav nav-pills nav-justified">
								<li><a href="?quanly=product&id=<?php echo $product['id'] ?>"><i class="fa fa-plus-square"></i>Detail</a></li>

							</ul>
						</div>
					</div>



				</div>
		<?php }
		} ?>


	</div>
	<!--features_items-->
	<ul class="pagination">
		<li class="active"><a href="">1</a></li>
		<li><a href="">2</a></li>
		<li><a href="">3</a></li>
		<li><a href="">&raquo;</a></li>
	</ul>
</div> <!-- space for item-->