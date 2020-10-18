layui.use(['form'], function () {
    let $ = layui.jquery,
        form = layui.form,
        layer = layui.layer;

    // 进行登录操作
    form.on('submit(login)', function (data) {
        data = data.field;
        if (data.userName == '') {
            layer.msg('用户名不能为空');
            return false;
        }
        if (data.password == '') {
            layer.msg('密码不能为空');
            return false;
        }
        $.ajax({
            async:true
            ,url: '/login'
            ,type: 'get'
            ,data: $('#form-login').serialize()
            ,dataType: 'json'
            ,success: function (data){
                //判断是否登录成功
                if(data.state == 10){
                    window.location="home";
                }
                //判断用户名是否为空
                else if (data.state == 1){
                    layer.msg('用户名为空！');
                }
                //判断用户名是否存在
                else if (data.state == 2){
                    layer.msg('用户不存在！');
                }
                //判断密码是否正确
                else if (data.state == 3){
                    layer.msg('密码错误！');
                }
                //判断是否需要修改密码
                /*else if (data.state == 4){
                    $('#pwd_userName').val(data.userName);
                    layer.open({
                        type: 1,
                        title:'密码修改',
                        area: ['350px','350px'],
                        shadeClose: false,
                        content: $('#changePwdStyle')
                    });
                }*/
            }
        });
        return false;
    });
    //绑定回车键
    $(document).keydown(function (e) {
        if (e.keyCode === 13) {
            $('#login').click();
        }
    });
});