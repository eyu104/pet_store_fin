$(function (){
    $('#keyword').on('keyup',function () {
        var keyword = $(this).val();
        if (keyword !== '' && keyword !== null && keyword.length !== 0){
            $.ajax({
                type    :   'GET',
                url     :   'http://localhost:8080/petstore/productAuto?keyword='+keyword,
                success :   function (data) {
                    console.log(data);
                    var productListHTML = '';
                    for (var i = 0; i < data.length; i++) {
                        productListHTML += '<li class=\"productAutoItem\" data-productId="';
                        productListHTML += data[i].productId;
                        productListHTML +='">';
                        productListHTML += data[i].categoryId + ': ';
                        productListHTML += data[i].name;
                        productListHTML += '</li>';
                    }
                    $('#productAutoList').html(productListHTML);
                    $('#productAutoComplete').show();
                },
                error   : function (errorMsg) {
                    console.log(errorMsg);
                }
            });
        }else {
            $('#productAutoComplete').hide();
        }
    });

    $(document).on('click','.productAutoItem',function (){
        var productId = $(this).data('productid');
        $('#productAutoComplete').hide();
        $('#keyword').val("");
        window.location.href = 'http://localhost:8080/petstore/productForm?productId=' + productId;
    });

    $("div:not('#Search')").on('click',function (){
        $('#productAutoComplete').hide();
    });
})