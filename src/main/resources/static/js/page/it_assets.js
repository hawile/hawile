layui.use(['form','table'],function(){
    let form = layui.form;
    let table = layui.table;
    //渲染数据表格
    table.render({
        elem: '#table'
        ,height: 550
        ,url: '/it_assets/list' //数据接口
        ,page: true
        ,limits: [10,20,30,50,100,200,500]
        ,limit: 10
        ,toolbar: '#toolbarDemo'
        ,cols: [[ //表头
            {type: 'checkbox', align:'center', width:40}
            ,{type: 'numbers', title: '序号', align:'center', width:50}
            ,{field: 'number', title: '设备编号', align:'center', width:200, sort: true}
            ,{field: 'type', title: '设备类型', align:'center', width:150, sort: true}
            ,{field: 'name', title: '设备名称', align:'center', width:200, sort: true}
            ,{field: 'brand', title: '设备品牌', align:'center', width:200, sort: true}
            ,{field: 'model', title: '设备型号', align:'center', width:200, sort: true}
            ,{field: 'serial', title: '序列号', align:'center', width:200, sort: true}
            ,{field: 'position', title: '存放位置', align:'center', width:200, sort: true}
            ,{field: 'user', title: '使用人', align:'center', width:200, sort: true}
            ,{field: 'use', title: '用途', align:'center', width:200, sort: true}
            ,{field: 'ip', title: 'IP地址', align:'center', width:200, sort: true}
            ,{field: 'network', title: '使用网络', align:'center', width:200, sort: true}
            ,{field: 'use', title: '用途', align:'center', width:200, sort: true}
            ,{field: 'remark', title: '备注', align:'center', width:100, sort: true}
            ,{field: 'updateTime', title: '修改时间', align:'center',templet :
                    "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>"
                    , width:200, sort: true}
            ,{fixed: 'right',title: '操作', width:130, align:'center', toolbar: '#barDemo'}
        ]]
    });

    //监听头部工具栏事件
    table.on('toolbar(table)',function (obj){
        //IT固定资产-添加
        if(obj.event == 'insert'){
            $('.layui-input').val('');
            $('textarea').val('');
            layer.open({
                type: 1,
                title:'添加资产',
                area: ['600px','90%'],
                shadeClose: false,
                content: $('#add_assets_style'),
            });
        }
    });

    //监听工具栏事件
    table.on('tool(table)',function (obj){
        //获取当前行的数据
        let data = obj.data;
        switch (obj.event){
            //IT固定资产-编辑
            case 'edit':
                $('input[id=id]').val(data.id);
                $('input[id=up_number]').val(data.number);
                $('input[id=up_type]').val(data.type);
                $('input[id=up_name]').val(data.name);
                $('input[id=up_brand]').val(data.brand);
                $('input[id=up_model]').val(data.model);
                $('input[id=up_serial]').val(data.serial);
                $('input[id=up_position]').val(data.position);
                $('input[id=up_user]').val(data.user);
                $('input[id=up_use]').val(data.use);
                $('input[id=up_ip]').val(data.ip);
                $('input[id=up_network]').val(data.network);
                $('textarea[id=up_remark]').val(data.remark);
                layer.open({
                    type: 1,
                    title:'编辑资产',
                    area: ['600px','90%'],
                    shadeClose: false,
                    content: $('#up_assets_style'),
                });
            break;
            //IT固定资产-删除
            case 'delete':
                layer.confirm('确认要删除吗？',function(){
                    $.ajax({
                        async: 'true',
                        url: '/it_assets/delete',
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
            url: '/it_assets/insert',
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
                }else if (data == 100){
                    layer.alert('该设备编号已存在，请重新输入！',{
                        title: '提示框',
                        icon:2,
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
            url: '/it_assets/update',
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
                }else if (data == 100){
                    layer.alert('该设备编号已存在，请重新输入！',{
                        title: '提示框',
                        icon:2,
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
