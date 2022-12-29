$(function (){
    $('#update').remove();
    $('.quantityChange').on('blur',function (e){
        var item = $(this).parent().parent(),
            quantity = $(this).val();
        var itemId = item.attr('id'),
            subToatl = $('#subTotal'),
            itemTotal = item.find('.cartItemTotal');
        console.log(quantity);
        console.log(itemId);

        $.ajax({
            type: 'POST',
            url:  'http://localhost:8080/petstore/update?quantity='+ quantity+'&itemId=' + itemId,
            success : function (data){
                var arry = data.split(",");
                itemTotal.html("$" + arry[0]);
                subToatl.html("总价: $" + arry[1]);
                console.log(arry[1]);
            },
            error: function (error){
                console.log(error)
            }
        });
    });
})