$(function($) {
    layui.use(['form','laydate','table'],function(){
        let form = layui.form;
        let laydate = layui.laydate;
        let table = layui.table;
        //渲染日期选择框
        laydate.render({
            elem: '#date',
            trigger: 'click',
            format: 'yyyy-MM-dd'
        });

        //渲染数据表格
        table.render({
            elem: '#table'
            ,height: 550
            ,url: '/atm/list' //数据接口
            ,page: true
            ,limits: [10,20,30,50,100,200,500]
            ,limit: 10
            ,toolbar: '#toolbarDemo'
            ,cols: [[ //表头
                {type: 'checkbox', width:40}
                ,{type: 'numbers', title: 'ID', align:'center', width:50, sort: true}
                ,{field: 'date', title: '统计日期', align:'center', width:150, sort: true}
                ,{field: 'name', title: '订单名称', align:'center', width:200, sort: true}
                ,{field: 'number', title: '商品总数', align:'center', width:110, sort: true}
                ,{field: 'total', title: '商品总额', align:'center', width:110, sort: true}
                ,{field: 'state', title: '订单状态', align:'center', width:110, sort: true}
                ,{field: 'remark', title: '备注', align:'center', width:300}
                ,{field: 'updateTime', title: '更新时间', align:'center',templet :
                        "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
                ,{fixed: 'right',title: '操作', width:170, align:'center', toolbar: '#barDemo'}
            ]]
        });

        //监听头部工具栏事件
        table.on('toolbar(table)',function (obj){
            switch (obj.event){
                //订单-添加
                case 'insert':
                    $('input').val('');
                    layer.open({
                        type: 1,
                        title:'添加订单',
                        area: ['400px','90%'],
                        shadeClose: false,
                        content: $('#add_ATM_style'),
                    });
                break;
                //商品-编辑
                case 'goods':
                    layer.open({
                        type: 2,
                        title:'商品编辑',
                        area: ['900px','95%'],
                        shadeClose: false,
                        content: '/atm/goods',
                    });
                break;
            }
        });

        //监听工具栏事件
        table.on('tool(table)',function (obj) {
            //获取当前行的数据
            let data = obj.data;
            switch (obj.event) {
                //订单-查看
                case 'detail':
                    layer.open({
                        type: 2,
                        title:"【"+data.name+"】详细信息",
                        area: ['90%','90%'],
                        shadeClose: false,
                        content: '/atm/order?id='+data.id,
                    });
                break;
                //订单-导出
                case 'export':
                    window.location='/atm/export?orderId='+data.id;
                break;
                //订单-删除
                case 'delete':
                    layer.confirm('确认要删除吗？',function(){
                        $.ajax({	//ajax提交表单
                            async: true,
                            url: '/atm/delete',
                            type: 'post',
                            data: {'id':data.id,'name':data.name},
                            dataType: 'text',
                            success: function(data){	//返回值判断是否删除成功
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

        //订单添加-提交
        form.on('submit(subInsert)',function (){
            $.ajax({
                async: true,
                url: '/atm/insert',
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
        form.render();
    });
});

/*订单-商品管理*/
function goods(){
    $.ajax({	//提交订单信息
        async: true,
        url: '/goods',
        type: 'post',
        dataType: 'json',
        success: function(data){
            $('tbody[id=goodsListBody]').empty();	//清空原有数据
            $('#goodsListTable').dataTable().fnClearTable();
            $('#goodsListTable').dataTable().fnDestroy();
            //将获得的数据添加到数据行
            for(let i=0;i<data.length;i++){
                $('tbody[id=goodsListBody]').append('<tr id="goodsListTr'+i+'"></tr>');
                $('tr[id=goodsListTr'+i+']').append('<td>'+data[i].id+'</td>');
                $('tr[id=goodsListTr'+i+']').append('<td>'+data[i].name+'</td>');
                $('tr[id=goodsListTr'+i+']').append('<td>'+data[i].specs+'</td>');
                $('tr[id=goodsListTr'+i+']').append('<td>'+data[i].pcs+'</td>');
                $('tr[id=goodsListTr'+i+']').append('<td>'+data[i].price+'</td>');
                $('tr[id=goodsListTr'+i+']').append('<td>'+data[i].price2+'</td>');
                $('tr[id=goodsListTr'+i+']').append('<td>'+data[i].position+'</td>');
                $('tr[id=goodsListTr'+i+']').append('<td>'+data[i].remark+'</td>');
                $('tr[id=goodsListTr'+i+']').append('<td><button class="layui-btn layui-btn-normal layui-btn-sm" onclick="'
                    +'goodsEdit(\''+data[i].id+'\',\''+data[i].name+'\',\''+data[i].specs+'\',\''+data[i].pcs+'\',\''+data[i].price
                    +'\',\''+data[i].price2+'\',\''+data[i].remark+'\')">编辑</button>'
                    +'<button class="layui-btn layui-btn-danger layui-btn-sm" onclick="'
                    +'goodsDel(\''+data[i].id+'\')">删除</button></td>');
            }
            $('#goodsListTable').dataTable({
                "aaSorting": [[ 0, "asc" ]],//默认第几个排序
                "aoColumnDefs": [{"orderable":false,"aTargets":[0,7]}],
                "aLengthMenu":[5,10,15,30,50,100]// 指定列不参与排序
            });

        }
    });
    layer.open({
        type: 1,
        title:'商品管理',
        area: ['80%','85%'],
        shadeClose: false,
        content: $('#listGoodsStyle'),
    });
}