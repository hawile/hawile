$(function() {
    layui.use(['form','table'],function(){
        let form = layui.form;
        let table = layui.table;
        //渲染数据表格
        table.render({
            elem: '#table'
            ,height: 350
            ,url: '/atm/goods/list' //数据接口
            ,page: true
            ,limits: [10,20,30,50,100,200,500]
            ,limit: 10
            ,limit: 5
            ,toolbar: '#toolbarDemo'
            ,cols: [[ //表头
                {type: 'checkbox', align:'center', width:40}
                ,{type: 'numbers', title: '序号', align:'center', width:50}
                ,{field: 'name', title: '商品名称', align:'center', width:150}
                ,{field: 'specs', title: '规格', align:'center', width:100}
                ,{field: 'pcs', title: '单位', align:'center', width:80}
                ,{field: 'price', title: '单价', align:'center', width:80}
                ,{field: 'price2', title: '批发价', align:'center', width:80}
                ,{field: 'remark', title: '备注', align:'center'}
                ,{fixed: 'right',title: '操作', width:150, align:'center', toolbar: '#barDemo'}
            ]]
        });

        //监听头部工具栏事件
        table.on('toolbar(table)',function (obj){
            //商品-添加
            if(obj.event == 'insert'){
                $('input').val('');
                layer.open({
                    type: 1,
                    title:'添加商品',
                    area: ['400px','95%'],
                    shadeClose: false,
                    content: $('#add_goods_style'),
                });
            }
        });

        //监听工具栏事件
        table.on('tool(table)',function (obj) {
            //获取当前行的数据
            let data = obj.data;
            switch (obj.event) {
                //商品-编辑
                case 'edit':
                    $('input[id=id]').val(data.id);
                    $('input[id=up_name]').val(data.name);
                    $('input[id=up_specs]').val(data.specs);
                    $('input[id=up_pcs]').val(data.pcs);
                    $('input[id=up_price]').val(data.price);
                    $('input[id=up_price2]').val(data.price2);
                    $('input[id=up_remark]').val(data.remark);
                    layer.open({
                        type: 1,
                        title:'编辑商品',
                        area: ['400px','95%'],
                        shadeClose: false,
                        content: $('#up_goods_style'),
                    });
                break;
                //商品-删除
                case 'delete':
                    layer.confirm('确认要删除吗？',function(){
                        $.ajax({
                            async: 'true',
                            url: '/atm/goods/delete',
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

        //商品添加-提交
        form.on('submit(subInsert)',function (){
            $.ajax({
                async: true,
                url: '/atm/goods/insert',
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

        //商品修改-提交
        form.on('submit(subUpdate)',function (){
            $.ajax({
                async: true,
                url: '/atm/goods/update',
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
});