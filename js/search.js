

 $('#search').keypress(function(event) {
    if (event.keyCode == 13) {
        var search_value= document.getElementById("search").value;
        if (search_value===''){
            return;
        }
        else{
            $.ajax({
                url: 'include/search.php',//shop.php
                type: 'POST',
                data: {
                value: search_value            
                }
            }); 
        }
    }
});
        

    
