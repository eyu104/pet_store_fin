$(function (){
    function usernameIsVaild(Str){
        if (Str.length === 0 || Str === '' || Str === null){
            return '用户名不能为空';
        }
        else if (Str.length <= 3){
            return '用户名长度不能小于3位';
        }else {
            return '';
        }
    }

    function passwordIsVaild(Str){
        if (Str.length === 0 || Str === '' || Str === null){
            return '密码不能为空';
        }
        if (Str.length < 6){
            return '密码长度不能小于6位';
        }else {
            return '';
        }
    }

    var signOnMsg = $('#signOnMsg');

    $('#username').on('blur',function () {
        var Msg = usernameIsVaild($(this).val());
        signOnMsg.html(Msg);
    });

    $('#password').on('blur',function () {
        var Msg = passwordIsVaild($(this).val());
        signOnMsg.html(Msg);
    });



    $('#secode').on('blur',function (){
        var secode = $('#secode').val().toLowerCase(),
            checkcode = null;
        $.ajax({
            type: 'GET',
            url: 'http://localhost:8080/petstore/getCheckcode',
            success: function (data) {
                checkcode = data.toLowerCase();
                console.log(checkcode);
                console.log(secode);
                if (checkcode == secode){
                    console.log('验证码正确');
                    signOnMsg.html('');
                    $('#loginForm').dataset.ok = true;
                }else {
                    signOnMsg.html('验证码错误，请重试');
                    $('#loginForm').dataset.ok = false;
                }
            },
            error: function (errorMsg) {
                console.log(errorMsg);
            }
        });
    })

    //注册界面，判断用户名是否存在
    $('#usernameMsg').hide();
    $('#username2').on('blur',function (){
        var username2 = $(this).val();
        $.ajax({
            type    :   'GET',
            url     :   'http://localhost:8080/petstore/accountIsVaild?username='+username2,
            success :   function (data) {
                console.log(data);
                if (data === '1'){
                    $('#usernameMsg').html('用户名已存在');
                    $('#usernameMsg').show();
                }else {
                    $('#usernameMsg').html('');
                    $('#usernameMsg').hide();
                }
            },
            error   : function (errorMsg) {
                console.log(errorMsg);
            }
        });
    })

})