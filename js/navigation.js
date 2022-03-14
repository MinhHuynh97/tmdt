function category(){
    $(document).ready(function() {
        $('.cate').click(function(evt) {
            evt.preventDefault();        
            var divId= $(this).attr('id');
            
            $.ajax({
                url: 'http://localhost/shop.php',
                type: 'POST',
                data: {            
                    category: divId,            
                },
                success: function(response){
                    window.location.href ="http://localhost/shop.php";
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