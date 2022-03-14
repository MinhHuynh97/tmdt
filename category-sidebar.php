<?php							
	$query = "select * from categories where 1";
	$result = mysqli_query($con, $query);
	$maxitem = 7;
	while($row = mysqli_fetch_array($result)){
		if ($row[0]==$maxitem+1){break;}
		$name=$row["name"];
		$url='./shop.html';
	?>
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title"><a class="cate" id="<?=$name?>"	href="javascript:category()"><?= $name; ?></a></h4>
</div>
</div>	
<?php }	?>