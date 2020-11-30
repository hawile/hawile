layui.use(['form','table'],function(){
    let $ = layui.jquery,
        form = layui.form,
        table = layui.table;

    //渲染数据表格
    table.render({
        elem: '#table'
        ,height: 550
        ,url: '/contact/list' //数据接口
        ,page: true
        ,limits: [10,20,30,50,100,200,500]
        ,limit: 10
        ,toolbar: '#toolbarDemo'
        ,cols: [[ //表头
            {type: 'checkbox', align:'center', width:40}
            ,{type: 'numbers', title: '序号', align:'center', width:50}
            ,{field: 'tradeName', title: '厂商名称', align:'center', width:120, sort: true}
            ,{field: 'device', title: '设备名称', align:'center', width:150, sort: true}
            ,{field: 'contacts', title: '联系人', align:'center', width:150}
            ,{field: 'number', title: '联系电话', align:'center', width:200, sort: true}
            ,{field: 'email', title: '电子邮箱', align:'center', width:150}
            ,{field: 'qq', title: 'QQ号码', align:'center', width:120, sort: true}
            ,{field: 'remark', title: '备注', align:'center', width:150, sort: true}
            ,{field: 'updateTime', title: '修改时间', align:'center',templet :
                    "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
            ,{fixed: 'right',title: '操作', width:130, align:'center', toolbar: '#barDemo'}
        ]]
    });

    //监听头部工具栏事件
    table.on('toolbar(table)',function (obj){
        //联系人-添加
        if(obj.event == 'insert') {
            $('input').val('');
            $('textarea').val('');
            layer.open({
                type: 1,
                title: '添加联系人',
                area: ['600px', '90%'],
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
            //联系人-编辑
            case 'edit':
                $('input[id=id]').val(data.id);
                $('input[id=up_tradeName]').val(data.tradeName);
                $('input[id=up_device]').val(data.device);
                $('input[id=up_contacts]').val(data.contacts);
                $('input[id=up_number]').val(data.number);
                $('input[id=up_email]').val(data.email);
                $('input[id=up_qq]').val(data.qq);
                $('textarea[id=up_remark]').val(data.remark);
                layer.open({
                    type: 1,
                    title:'编辑联系人',
                    area: ['600px','90%'],
                    shadeClose: false,
                    content: $('#up_contact_style'),
                });
            break;
            //联系人-删除
            case 'delete':
                layer.confirm('确认要删除吗？',function(){
                    $.ajax({
                        async: true,
                        url: '/contact/delete',
                        type: 'post',
                        data: {'id':data.id,'tradeName':data.tradeName,'contacts':data.contacts},
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

    //添加厂商联系人信息-提交
    form.on('submit(subInsert)',function (){
        $.ajax({
            async: true,
            url: '/contact/insert',
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

    //修改厂商联系人信息-提交
    form.on('submit(subUpdate)',function (){
        $.ajax({
            async: true,
            url: '/contact/update',
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