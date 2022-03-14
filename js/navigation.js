function category(){
    $(document).ready(function() {
        $('.cate').click(function(evt) {
            evt.preventDefault();        
            var divId= $(this).attr('id');
            
            $.ajax({
                url: 'http://localhost/shop1/eshopper/shop.php',
                type: 'POST',
                data: {            
                    category: divId,            
                },
                success: function(response){
                    window.location.href ="http://localhost/shop1/eshopper/shop.php";
                },
                error:function(response){
                    handleError();
                }
             });
        });
        
        
    });
    
}


function handleError(){
    console.log("Error");
}