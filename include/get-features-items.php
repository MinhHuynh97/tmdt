<?php
$query = "select * from clothes where 1";
$result = mysqli_query($con, $query);
$maxitem = 6;
while ($row = mysqli_fetch_array($result)) {
	if ($row[0] == $maxitem + 1) {
		break;
	}
	$title = $row["title"];
	$price = $row["price"];
	$img = $row["img"];
?>
	<div class="col-sm-4">
		<div class="product-image-wrapper">
			<div class="single-products">
				<div class="productinfo text-center">
					<img src="<?= $img; ?>" alt="" />
					<h2><?= $price; ?>$</h2>
					<p><?php if (str_word_count($title) > 4) {
							$piece = explode(" ", $title);
							$title = implode(" ", array_splice($piece, 0, 4));
							echo "$title ...";
						} else echo $title; ?></p>
					<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
				</div>
				<div class="product-overlay">
					<div class="overlay-content">
						<h2><?= $price; ?>$</h2>
						<p><?= $title; ?></p>
						<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
					</div>
				</div>
			</div>
			<div class="choose">
				<ul class="nav nav-pills nav-justified">
					<li><a href="?quanly=product&id=<?php echo $row['id']?>"><i class="fa fa-plus-square"></i>Detail</a></li>

				</ul>
			</div>
		</div>
	</div>
<?php }	?>