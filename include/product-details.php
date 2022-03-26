<?php include_once('database/connect.php');
if (isset($_GET['id'])) {
	$id = $_GET['id'];
	$sql_detail = mysqli_query($con, "SELECT * FROM clothes WHERE '$id' = id ");
	$num_item_on_cart = 0;
	$session_value = '';
	if (isset($_SESSION['id_account'])) {
		$session_value = $_SESSION['id_account'];
	}
?>
	<div class="col-sm-9 padding-right">
		<div class="product-details">
			<!--product-details-->
			<div class="col-sm-5">
				<div class="view-product">
					<?php if (mysqli_num_rows($sql_detail) > 0) {
						$product = mysqli_fetch_array($sql_detail);
						$category = $product['category'];
					?>
						<img src=" <?php echo $product['img'] ?>" alt="Hình ảnh minh họa" />
						<h3>Zoom</h3>
				</div>
			</div>
			<div class="col-sm-7">
				<div class="product-information">
					<!--/product-information-->
					<img src="images/product-details/new.jpg" class="newarrival" alt="" />
					<?php
						if ($session_value != '') {
							$id = $product['id'];
							$query = "SELECT cart_details.quantity, clothes.quantity 
											as cart_check FROM `cart_details`  
											inner join `carts` on carts.id=cart_details.cart_id 
											inner join `clothes` on cart_details.clothing_id=clothes.id WHERE cart_details.clothing_id = '$id' and carts.user_id = $session_value";
							$check_cart = mysqli_query($con, $query);

							if ($check_cart->num_rows != 0) {
								$row = mysqli_fetch_row($check_cart);
								$num_item_on_cart = $row[0];
							}
						}
					?>
					<input type="hidden" id="session-value" value="<?php echo $session_value ?>">
					<h2 id="product-title"> <?php echo $product['title'] ?></h2>
					<img src="images/product-details/rating.png" alt="" />
					<span>
						<span>US $ <?php echo $product['price'] ?></span>
						<?php if ($product['quantity'] > 0)
							echo "
							<label>Quantity:</label>
							<input id='input-quantity' type='text' value='1' />
							<button id='add-to-cart' type='button' class='btn btn-fefault cart' product-id='" . $product['id'] . "' remain-quantity='" . $product['quantity'] . "' num-item-on-cart='" . $num_item_on_cart . "'>
							<i class='fa fa-shopping-cart'></i>
							Add to cart
							</button>"
						?>
						<!-- connect add to cart later-->
					</span>
					<p><b>Availability:
							<?php if ($product['quantity'] > 0) echo $product['quantity'];
							else echo 'Out of Stock';
							?> </b> </p>

					<p><b>Condition:</b> New</p>
					<p><b>Brand:</b> E-SHOPPER</p>
					<a href=""><img src="images/product-details/share.png" class="share img-responsive" alt="" /></a>
				</div>
				<!--/product-information-->
			</div>
		</div>
		<!--/product-details-->

		<div class="category-tab shop-details-tab">
			<!--category-tab-->
			<div class="col-sm-12">
				<ul class="nav nav-tabs">
					<li><a href="#details" data-toggle="tab">Details</a></li>
					<li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li> <!-- add  num review after-->
					<li><a href="#related" data-toggle="tab">Related</a></li>

				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane fade" id="details">

					<?php $detail = mysqli_query($con, "SELECT * FROM product_detail WHERE '$id '= id ");
						if (mysqli_num_rows($detail) > 0) {
							$descrip = mysqli_fetch_array($detail);
					?>
						<div class="single-detail">
							<center>
								<h3> <?php echo $product['title'] ?></h3>
							</center>

							<img src=" <?php echo $descrip['img1'] ?>" alt="Fist image about product">

							<div class="product-detail">
								<p> <?php echo $descrip['first'] ?></p>
							</div>
							<img src="<?php echo $descrip['img2'] ?>" alt="Fist image about product">
							<div class="product-detail">
								<p> <?php echo $descrip['second'] ?></p>
							</div>
						</div>
					<?php } ?>
				</div>

				<div class="tab-pane fade" id="related">
					<!-- Item of the Company that related-->
					<?php $sql_relate =  mysqli_query($con, "SELECT * FROM clothes WHERE $category = category AND clothes.status = 'active' ");
						if (mysqli_num_rows($sql_relate) > 0) {
							while ($relate = mysqli_fetch_array($sql_relate)) {
					?>

							<div class="col-sm-3 d-flex">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<a href="?quanly=product&id=<?php echo $relate['id'] ?>"> <img src="<?php echo $relate['img'] ?>" alt="" /> </a>
											<h2>$ <?php echo $relate['price'] ?></h2>
											<p>
												<?php $title = $relate['title'];
												if (str_word_count($title) > 3) {
													$piece = explode(" ", $title);
													$title = implode(" ", array_splice($piece, 0, 3));
													echo "$title ...";
												} else echo $title; ?>
											</p>
											<?php
											if ($session_value != '') {
												$id = $product['id'];
												$query = "SELECT cart_details.quantity, clothes.quantity 
																as cart_check FROM `cart_details`  
																inner join `carts` on carts.id=cart_details.cart_id 
																inner join `clothes` on cart_details.clothing_id=clothes.id WHERE cart_details.clothing_id = '$id' and carts.user_id = $session_value";
												$check_cart = mysqli_query($con, $query);
					
												if ($check_cart->num_rows != 0) {
													$row = mysqli_fetch_row($check_cart);
													$num_item_on_cart = $row[0];
												}
											}

											if ($relate['quantity'] > 0) {

												if ($session_value != '') {
													$id = $relate['id'];
													$query = "SELECT cart_details.quantity, clothes.quantity 
																	as cart_check FROM `cart_details`  
																	inner join `carts` on carts.id=cart_details.cart_id 
																	inner join `clothes` on cart_details.clothing_id=clothes.id WHERE cart_details.clothing_id = '$id' and carts.user_id = $session_value";
													$check_cart = mysqli_query($con, $query);
						
													if ($check_cart->num_rows != 0) {
														$row = mysqli_fetch_row($check_cart);
														$num_item_on_cart = $row[0];
													}
												}
												echo "<button id='add-to-cart' class='btn btn-default add-to-cart' product-id='" . $relate['id'] . "' remain-quantity='" . $relate['quantity'] . "' num-item-on-cart='" . $num_item_on_cart . "' ><i class='fa fa-shopping-cart'></i>Add to cart</button>";
											} else {
												echo "<button class='btn btn-default add-to-cart'><i class='fa-solid fa-sync fa-spin'></i>Out of Stock</button>";
											}
											?>
										</div>
									</div>

								</div>

							</div>
					<?php }
						} ?>

				</div>
				<div class="tab-pane fade active in" id="reviews">
					<!-- Review about the product-->
					<div class="col-sm-12">
						<ul>
							<li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
							<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
							<li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
						</ul>
						<p> This is a review of the procduct from the database that add later. This is a sample of the review of the product.
						</p>
						<p><b>Write Your Review</b></p>

						<form action="#">
							<!-- Add the action for the review later-->
							<span>
								<input type="text" placeholder="Your Name" />
								<input type="email" placeholder="Email Address" />
							</span>
							<textarea name=""></textarea>
							<b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
							<button type="button" class="btn btn-default pull-right">
								Submit
							</button>
						</form>
					</div>
				</div>
			</div>
			<!--/category-tab-->



		</div>
	</div>
<?php }
				} ?>