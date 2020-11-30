layui.use(['form','table'],function(){
    let form = layui.form;
    let table = layui.table;
    
    //渲染数据表格
    table.render({
        elem: '#table'
        ,height: 550
        ,url: '/job/list' //数据接口
        ,page: true
        ,limits: [10,20,30,50,100,200,500]
        ,limit: 10
        ,toolbar: '#toolbarDemo'
        ,cols: [[ //表头
            {type: 'checkbox', width:40}
            ,{type: 'numbers', title: '序号',align: "center" , width:50}
            ,{field: 'deptName', title: '部门名称',align: "center" , width:250, sort: true}
            ,{field: 'jobName', title: '职务名称',align: "center" , width:250, sort: true}
            ,{field: 'remark', title: '备注',align: "center" , width:400, sort: true}
            ,{field: 'updateTime', title: '更新时间',align: "center" ,templet :
                    "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
            ,{fixed: 'right',title: '操作', width:150, align:'center', toolbar: '#barDemo'}
        ]]
    });
    
    //监听头部工具栏事件
    table.on('toolbar(table)',function (obj){
        switch (obj.event){
            //职务-添加
            case 'insert':
                $('input').val('');
                $('textarea').val('');
                layer.open({
                    type: 1,
                    title: '添加职务',
                    area: ['400px', '450px'],
                    shadeClose: false,
                    content: $('#add_job_style'),
                });
            break;
            //部门管理
            case 'dept':
                layer.open({
                    type: 2,
                    title:'部门管理',
                    area: ['400px','95%'],
                    shadeClose: false,
                    content: '/dept',
                });
            break;
        }
    });

    //监听工具栏事件
    table.on('tool(table)',function (obj){
        //获取当前行的数据
        let data = obj.data;
        switch (obj.event){
            //职务-编辑
            case 'edit':
                $('#id').val(data.jobId);
                $('#up_name').val(data.jobName);
                $('#up_deptId').val(data.deptId);
                $('#up_remark').val(data.remark);
                form.render('select');
                layer.open({
                    type: 1,
                    title:'编辑职务',
                    area: ['400px','450px'],
                    shadeClose: false,
                    content: $('#up_job_style'),
                });
            break;
            //职务-删除
            case 'delete':
                layer.confirm('确认要删除吗？',function(){
                    $.ajax({
                        async: true,
                        url: '/job/delete',
                        type: 'post',
                        data: {'jobId':data.jobId,'jobName':data.jobName},
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
                                layer.alert('已绑定用户,不能删除！',{
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

    //职务添加-提交
    form.on('submit(subInsert)',function (){
        $.ajax({
            async: true,
            url: '/job/insert',
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

    //职务修改-提交
    form.on('submit(subUpdate)',function (){
        $.ajax({
            async: false,
            url: '/job/update',
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