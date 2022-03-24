

$(document).ready(function(){
    // showDataGioHang();
	
    function showDataGioHang(){
        // $.ajax({
        //     url:'./giohang_show.php',
        //     type:'POST',
        //     data:{
        //         test1:1
        //     },
        //     success:function(res){
                
        //         $('#cart_id').html(res);
                
            
            
        //     }
        // })
    }
    // function showTotal(){
    //     $.ajax({
    //         url:'./giohang_total.php',
    //         type:'POST',
    //         data:{
    //             test2:1
    //         },
    //         success:function(res){
                
    //             $('#total_cart').html(res);
                
            
            
    //         }
    //     })
    // }
    // $(document).on('input','#soluong_item_giohang',function(){
	// 	var id_giohang=$(this).attr('id_slgh');
	// 	var sl_gh=$(this).val();
	// 	$.ajax({
	// 			url:'./giohang_sl.php',
	// 			type:'POST',
	// 			data:{
                    
	// 				id_giohang:id_giohang,
	// 				sl_gh:sl_gh
	// 			},
	// 			success:function(res){
					
	// 				showDataGioHang();
	// 				showTotal()
	// 			}
	// 		})
	// })
	
    // $(document).on('click','.update',function(){
	// 	var code_amount=document.getElementById("code_amount").value;
    //     var code_gift=document.getElementById("code_gift").value;
	// 	$.ajax({
	// 			url:'./giohang_total.php',
	// 			type:'POST',
	// 			data:{
    //                 test2:1,
    //                 code_amount:code_amount,
	// 				code_gift:code_gift
	// 			},
	// 			success:function(res){
					
	// 				showDataGioHang();
    //                 // $('#total_cart').html(res);
					
	// 			}
	// 		})
	// })

})