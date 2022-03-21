<?php
//include_once('../database/connect.php');
$query = "select * from clothes where 1";
$result = mysqli_query($con, $query);
$group_item = '';
$item_list = array();
$i = 0;
$j = 0;
while ($row = mysqli_fetch_array($result)) {
	$temp = '<div class="col-sm-4">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
							<a href="?quanly=product&id=' . $row['id'] . '"> <img src="' . $row["img"] . '" alt="" /> </a> 
                                <h2>' . $row["price"] . '</h2>
                                <p>' . $row["title"] . '</p>
                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                            </div>                    
                        </div>
                    </div>
                </div>';
	array_push($item_list, $temp);
}
$item_list = array_reverse($item_list);
while (count($item_list) != 0) {
	if ($i == 0) {
		$group_item .= '<div class="item active">';
	} else {
		$group_item .= '<div class="item">';
	}
	for ($j = 0; $j <= 2; $j++) {
		$temp = array_pop($item_list);
		$group_item .= $temp;
	}
	$group_item .= '</div>';
	$i++;
}


?>
<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
	<div class="carousel-inner">
		<?php echo $group_item; ?> <a href=""></a>
	</div>
	<a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
		<i class="fa fa-angle-left"></i></a>
	<a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
		<i class="fa fa-angle-right"></i></a>
</div>




<!--<div class="recommended_items">recommended_items
						<h2 class="title text-center">recommended items</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">							
							<div class="carousel-inner">
								<div class="item active">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend2.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend3.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
                                    <div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend3.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
								<div class="item">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend1.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend2.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend3.jpg" alt="" />
													<h2>$56</h2>
													<p>Easy Polo Black Edition</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>								
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>

					</div>recommended_items-->