layui.use('form',function (){
    let form = layui.form;

    form.on('select(dept)', function (obj) {
        if(obj.value !== ""){
            //清空职务下拉菜单
            $('select[class="job"]').empty();
            //ajax查询返回特定部门ID的职务列表
            $.ajax({
                async: false,
                timeoutSeconds: 1,
                url: '/job/findByDeptId',
                type: 'post',
                data: {'deptId':obj.value},
                dataType: 'json',
                success: function (data) {
                    //循环取出职务列表
                    for(let i=0;i<data.length;i++){
                        //向职务下来菜单中添加菜单项
                        $('select[class="job"]').append(new Option(data[i].jobName,data[i].jobId));
                    }
                }
            });
            form.render();
        }
    });

    //用户申请-提交
    form.on('submit(subSign)',function (){
        //查询该用户名数量
        $.ajax({
            async: true
            ,url: '/user/user_count'
            ,type: 'post'
            ,data: {userName:$('#userName').val()}
            ,dataType: 'text'
            ,success: function (data){
                //判断是否存在相同用户名
                if(data == 0){
                    $.ajax({
                        async: true
                        ,url: '/user_sign/apply'
                        ,type: 'post'
                        ,data: $('#FormSign').serialize()
                        ,dataType: 'text'
                        ,success: function (data){
                            if(data == 1){
                                layer.alert('申请成功！',{
                                    title: '提示框',
                                    icon:1,
                                },function(){
                                    parent.location.reload();
                                });
                            }else{
                                layer.alert('申请失败！',{
                                    title: '提示框',
                                    icon:2,
                                },function(){
                                    parent.location.reload();
                                });
                            }
                        }
                    });
                }else{
                    layer.msg("用户名已被使用!");
                }
            }
        });
    });
    //自定义表单验证
    form.verify({
        confirmPwd:function (value) {
            if($('input[name=password]').val() != value){
                return "两次密码输入不一致!";
            }
        }
    });
    form.render();
});