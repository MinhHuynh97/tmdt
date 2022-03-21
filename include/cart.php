<?php
if(isset($_SESSION['id_account']))
{

}
else{
	echo "<script>alert('You must login!!')</script>";
	echo "<script>window.location.href='?quanly=home'</script>";
}
if(isset($_GET['did']))
{
	try {
		$rs=mysqli_query($con,"delete from cart_details where clothing_id='$_GET[did]'");
		if(!$rs) {
			$error = "You cannot delete this row";
			throw new Exception($error);
		}  
		else
		{
			echo "<script>window.location.href='?quanly=cart'</script>";
		}
		
	} catch (Exception $e) {
		echo "<script>window.location.href='?quanly=cart'</script>";
		echo $e->getMessage();
		
	}
	
}

?>
	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart'<?php echo $_SESSION['name'] ?></li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-hover my-0">
					<thead>
						<tr>
						<td class="d-none d-xl-table-cell text-center">Id</td>
							<td class="d-none d-xl-table-cell text-center"></td>
							<td class="d-none d-xl-table-cell text-center">Title</td>
							<td class="d-none d-xl-table-cell text-center">Price</td>
							<td class="d-none d-xl-table-cell text-center">Quantity</td>
							<td class="d-none d-xl-table-cell text-center">Total</td>
							<td class="d-none d-xl-table-cell text-center"></td>
						</tr>
					</thead>
					<tbody id="cart_id">
						

						
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>What would you like to do next?</h3>
				<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<form action="" method="post">
					<div class="chose_area">
						<ul class="user_option">
							
							<li>
								
								<label>Use Coupon Code</label>
								<input id="code_amount" type="text" > 
							</li>
							<li>
								
								<label>Use Gift Code</label>
								<input style="margin-left: 26px;" id="code_gift" type="text" > 
							</li>
							
						</ul>
						
						<input type="button"  class="btn btn-default update" value="Update" >
					</div>	
						</form>
					
				</div>
				<div class="col-sm-6">
					<div class="total_area">
						<ul id="total_cart">
							
						</ul>
							
							<a class="btn btn-default check_out" href="">Check Out</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->


	
	<script>
    function delproduct(id){
        var msg = confirm("Are you sure you want to delete this product?");

    if (msg) {
        window.location.href = "?quanly=cart&did="+id;
    }
    }
	
    </script>
