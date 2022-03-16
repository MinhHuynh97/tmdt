<?php
	$query = "select * from categories where 1";
	$result = mysqli_query($con, $query);
    $tab_menu = '';
    $tab_content = '';
    $i=0;
    while($row = mysqli_fetch_array($result)){
        if($i == 0){
            $tab_menu .= '<li class="active"><a href="#'.$row["id"].'" data-toggle="tab">'.$row["name"].'</a></li>';
            $tab_content .= '<div id="'.$row["id"].'" class="tab-pane fade active in">';
        }else{
            $tab_menu .= '<li><a href="#'.$row["id"].'" data-toggle="tab">'.$row["name"].'</a></li>';
            $tab_content .= '<div id="'.$row["id"].'" class="tab-pane fade">';
        }    
    
        $product_query = "select * from clothes where clothes.category = '".$row["id"]."'";
        $product_result = mysqli_query($con, $product_query);
        
        while($sub_row = mysqli_fetch_array($product_result)){
            if($sub_row[0]==5){break;}
            $tab_content .= '
            <div class="col-sm-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="'.$sub_row["img"].'" alt="" />
                            <h2>'.$sub_row["price"].'</h2>
                            <p>'.$sub_row["title"].'</p>
                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                        </div>                    
                    </div>
                </div>            
        </div>';
        } 
        $tab_content .= '</div>';   
        $i++;
    }
?>
    <div class="col-sm-12">
		<ul class="nav nav-tabs">
            <?=$tab_menu?>
		</ul>
	</div>
	<div class="tab-content">	
        <?=$tab_content?>        
    </div>
    		  

