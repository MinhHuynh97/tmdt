$(document).ready(function(){
    showDataGioHang();
    function showDataGioHang(){
        $.ajax({
            url:'./giohang_show.php',
            type:'POST',
            data:{
                test1:1
            },
            success:function(res){
                
                $('#cart_id').html(res);
                
            
            
            }
        })
    }
    $(document).on('input','#soluong_item_giohang',function(){
		var id_giohang=$(this).attr('id_slgh');
		var sl_gh=$(this).val();
		$.ajax({
				url:'./giohang_sl.php',
				type:'POST',
				data:{
					id_giohang:id_giohang,
					sl_gh:sl_gh
				},
				success:function(res){
					
					showDataGioHang();
					
				}
			})
	})
    $(document).on('click','.xoa_item_giohang',function(){
		var id_giohang_de=$(this).attr('id_xoa');
		$.ajax({
				url:'./giohang_delete.php',
				type:'POST',
				data:{
					id_giohang_de:id_giohang_de
				},
				success:function(res){
					alert(1);
					showDataGioHang();
					
				}
			})
	})

})