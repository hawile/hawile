layui.use(['form','table'],function(){
    let form = layui.form;
    let table = layui.table;
    //渲染数据表格
    table.render({
        elem: '#table'
        ,height: 550
        ,url: '/acc_num/list' //数据接口
        ,page: true
        ,toolbar: '#toolbarDemo'
        ,cols: [[ //表头
            {type: 'checkbox', align:'center', width:40}
            ,{type: 'numbers', title: '序号', align:'center', width:50}
            ,{field: 'area', title: '区域', align:'center', width:100, sort: true}
            ,{field: 'name', title: '账号名称', align:'center', width:150, sort: true}
            ,{field: 'type', title: '账号类型', align:'center', width:200}
            ,{field: 'ip', title: '登陆IP', align:'center', width:200, sort: true}
            ,{field: 'user', title: '用户名', align:'center', width:150}
            ,{field: 'password', title: '密码', align:'center', width:150, sort: true}
            ,{field: 'remark', title: '备注', align:'center', width:100, sort: true}
            ,{field: 'updateTime', title: '修改时间', align:'center',templet :
                    "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
            ,{fixed: 'right',title: '操作', width:130, align:'center', toolbar: '#barDemo'}
        ]]
    });

    //监听头部工具栏事件
    table.on('toolbar(table)',function (obj){
        //账号-添加
        if(obj.event == 'insert'){
            $('.layui-input').val('');
            $('textarea').val('');
            layer.open({
                type: 1,
                title:'添加账号',
                area: ['400px','90%'],
                shadeClose: false,
                content: $('#add_contact_style'),
            });
        }
    });

    //监听工具栏事件
    table.on('tool(table)',function (obj){
        //获取当前行的数据
        let data = obj.data;
        switch (obj.event){
            //账号-编辑
            case 'edit':
                $('input[id=id]').val(data.id);
                $('input[id=up_area]').val(data.area);
                $('input[id=up_name]').val(data.name);
                $('input[id=up_type]').val(data.type);
                $('input[id=up_ip]').val(data.ip);
                $('input[id=up_user]').val(data.user);
                $('input[id=up_password]').val(data.password);
                $('textarea[id=up_remark]').val(data.remark);
                layer.open({
                    type: 1,
                    title:'编辑账号',
                    area: ['400px','90%'],
                    shadeClose: false,
                    content: $('#up_contact_style'),
                });
            break;
            //账号-删除
            case 'delete':
                layer.confirm('确认要删除吗？',function(){
                    $.ajax({
                        async: 'true',
                        url: '/acc_num/delete',
                        type: 'post',
                        data: {'id':data.id,'name':data.name},
                        dataType: 'text',
                        success: function(data){
                            if(data == 1){
                                layer.alert('删除成功！',{
                                    title: '提示框',
                                    icon:1,
                                },function(){
                                    location.reload();
                                });
                            }else{
                                layer.alert('删除失败！',{
                                    title: '提示框',
                                    icon:2,
                                },function(){
                                    location.reload();
                                });
                            }
                        }
                    });
                });
            break;
        }
    });


    //添加-提交
    form.on('submit(subInsert)',function (){
        $.ajax({
            async: false,
            url: '/acc_num/insert',
            type: 'post',
            data: $('#FormAdd').serialize(),
            dataType: 'text',
            success: function(data){
                if(data == 1){
                    layer.alert('添加成功！',{
                        title: '提示框',
                        icon:1,
                    },function(){
                        location.reload();
                    });
                }else{
                    layer.alert('添加失败！',{
                        title: '提示框',
                        icon:2,
                    },function(){
                        location.reload();
                    });
                }
            }
        });
    });

    //修改-提交
    form.on('submit(subUpdate)',function (){
        $.ajax({
            async: false,
            url: '/acc_num/update',
            type: 'post',
            data: $('#FormUp').serialize(),
            dataType: 'text',
            success: function(data){
                if(data == 1){
                    layer.alert('修改成功！',{
                        title: '提示框',
                        icon:1,
                    },function(){
                        location.reload();
                    });
                }else{
                    layer.alert('修改失败！',{
                        title: '提示框',
                        icon:2,
                    },function(){
                        location.reload();
                    });
                }
            }
        });
    });
    form.render();
});
