
<?php 
session_start();
include('database/connect.php');
if(isset($_POST['test2']))
{
    $total=mysqli_query($con, "SELECT SUM(cart_details.quantity*clothes.price) as total  FROM cart_details,clothes WHERE cart_details.clothing_id=clothes.id");
    $row_total=mysqli_fetch_array($total);
    
    $row_total_res=0;
    $row_code_percen=0;
    if(isset($_POST['code_amount']))
    {
        
        $code_amount=mysqli_query($con,"SELECT * from amount_discounts as ad, vouchers where ad.id=vouchers.id and code=".$_POST['code_amount']."");
        if($code_amount)
        {
            $total_res=mysqli_fetch_array($code_amount);
            $row_total_res=(int)$total_res['amount'];
            
        }
    }
    
    if(isset($_POST['code_gift']))
    {
        $code_percen=mysqli_query($con,"SELECT * from percentage_discounts as per, vouchers where per.id=vouchers.id and code=".$_POST['code_gift']."");
        if($code_percen)
        {
            $code_percen_res=mysqli_fetch_array($code_percen);
            $row_code_percen=$code_percen_res['percent'];
        }
    }
    if($row_total_res==0 && $row_code_percen==0)
    {
        echo "<li >Total<span>".$row_total['total']."</span> </li>
        <li>Coupon Code <span>0$</span></li>
        <li>Gift Code <span>0%</span></li>
        <li>Total <span>".$row_total['total']."</span></li>";
    }elseif($row_total_res==0 && $row_code_percen!=0){
        echo "<li >Total<span>".$row_total."</span> </li>
        <li>Coupon Code <span>0$</span></li>
        <li>Gift Code <span>".$row_code_percen."</span></li>
        <li>Total <span>";
        echo $row_total*$row_code_percen/100;
        echo "</span></li>";
        
    }
    elseif($row_total_res!=0 && $row_code_percen==0){
        echo "<li >Total<span>".$row_total['total']."</span> </li>
        <li>Coupon Code <span>".$row_total_res."$</span></li>
        <li>Gift Code <span>0%</span></li>
        <li>Total <span>";
        echo $row_total['total']-$row_total_res;
        echo "</span></li>";
    }elseif($row_total_res!=0 && $row_code_percen!=0){
        echo "<li >Total<span>".$row_total['total']."</span> </li>
        <li>Coupon Code <span>".$row_total_res."$</span></li>
        <li>Gift Code <span>".$row_code_percen."%</span></li>
        <li>Total <span>";
        echo ($row_total['total']-$row_total_res)*(100-$row_code_percen)/100;
    echo "</span></li>";}
    else{
        echo "<li >Total<span>".$row_total['total']."</span> </li>
        <li>Coupon Code <span>0$</span></li>
        <li>Gift Code <span>0%</span></li>
        <li>Total <span>".$row_total['total']."</span></li>";
    }
    
}

							
?>