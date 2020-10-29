layui.use(['form','table'],function(){
    let form = layui.form;
    let table = layui.table;
    //渲染数据表格
    table.render({
        elem: '#table'
        ,height: 400
        ,limit: 8
        ,url: '/dept/list' //数据接口
        ,page: true
        ,limits: [10,20,30,50,100,200,500]
        ,limit: 10
        ,toolbar: false
        ,cols: [[ //表头
            {type: 'checkbox', width:40}
            ,{type: 'numbers', title: '序号',align: "center" , width:50}
            ,{field: 'deptName', title: '部门名称',align: "center" , sort: true}
            ,{fixed: 'right',title: '操作', width:130, align:'center', toolbar: '#barDemo'}
        ]]
    });

    //监听工具栏事件
    table.on('tool(table)',function (obj){
        //获取当前行的数据
        let data = obj.data;
        switch (obj.event){
            //部门-编辑
            case 'edit':
                $('#deptId').val(data.deptId);
                $('#up_name').val(data.deptName);
                layer.open({
                    type: 1,
                    title:'编辑部门',
                    area: ['380px','200px'],
                    shadeClose: false,
                    content: $('#up_dept_style'),
                });
            break;
            //部门-删除
            case 'delete':
                layer.confirm('确认要删除吗？',function(){
                    $.ajax({
                        async: true,
                        url: '/dept/delete',
                        type: 'post',
                        data: {'deptId':data.deptId,'deptName':data.deptName},
                        dataType: 'text',
                        success: function(data){
                            if(data == 1){
                                layer.alert('删除成功！',{
                                    title: '提示框',
                                    icon:1,
                                },function(){
                                    location.reload();
                                });
                            }else if(data == 2){
                                layer.alert('已绑定部门,不能删除！',{
                                    title: '提示框',
                                    icon:2,
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

    //部门添加-提交
    form.on('submit(subInsert)',function (){
        $.ajax({
            async: true,
            url: '/dept/insert',
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

    //部门修改-提交
    form.on('submit(subUpdate)',function (){
        $.ajax({
            async: true,
            url: '/dept/update',
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

//部门-添加按钮
function insert(){
    $('input').val('');
    layer.open({
        type: 1,
        title:'添加部门',
        area: ['380px','200px'],
        shadeClose: false,
        content: $('#add_dept_style')
    });
}