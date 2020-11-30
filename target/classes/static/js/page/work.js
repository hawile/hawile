let checkboxVal;
//渲染表格
layui.use(['form','laydate','table'],function(){
    let form = layui.form;
    let laydate = layui.laydate;
    let table = layui.table;
    laydate.render({
        elem: '#date',
        trigger: 'click',
        format: 'yyyy-MM-dd'
    });
    laydate.render({
        elem: '#update',
        trigger: 'click',
        format: 'yyyy-MM-dd'
    });

    //渲染数据表格
    table.render({
        elem: '#table'
        ,height: 550
        ,url: '/work/list' //数据接口
        ,page: true
        ,limits: [10,20,30,50,100,200,500]
        ,limit: 10
        ,toolbar: '#toolbarDemo'
        ,cols: [[ //表头
            {type: 'checkbox', width:40}
            ,{type: 'numbers', title: '序号',align: "center" , width:50}
            ,{field: 'date', title: '日期',align: "center" , width:150, sort: true}
            ,{field: 'name', title: '工作人',align: "center" , width:150, sort: true}
            ,{field: 'dept', title: '部门',align: "center" , width:200}
            ,{field: 'content', title: '工作内容',align: "center" , width:500, sort: true}
            ,{field: 'updateTime', title: '更新时间',align: "center" ,templet :
                    "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
            ,{fixed: 'right',title: '操作', width:130, align:'center', toolbar: '#barDemo'}
        ]]
    });

    //监听头部工具栏事件
    table.on('toolbar(table)',function (obj){
        //工作报表-添加
        if(obj.event == 'insert'){
            $('input').val('');
            $('textarea').val('');
            //获取当前系统时间
            let date = new Date();
            //格式化当前时间
            let myDate = date.getFullYear();
            if(date.getMonth() < 9){
                myDate =myDate+"-0"+(date.getMonth()+1);
            }
            else {
                myDate = myDate+"-"+(date.getMonth()+1);
            }
            if(date.getDate()<10){
                myDate = myDate =myDate+"-0"+date.getDate();
            }else{
                myDate = myDate =myDate+"-"+date.getDate();
            }
            $('input[id=date]').val(myDate);
            layer.open({
                type: 1,
                title:'添加工作报表',
                area: ['380px','80%'],
                shadeClose: false,
                content: $('#workInsert'),
            });
        }
    });

    //监听工具栏事件
    table.on('tool(table)',function (obj){
        //获取当前行的数据
        let data = obj.data;
        switch (obj.event){
            //工作报表-编辑
            case 'edit':
                $('#id').val(data.id);
                $('#date_2').val(data.date);
                $('#name_2').val(data.name);
                $('#dept_2').val(data.dept);
                $('#content_2').val(data.content);
                layer.open({
                    type: 1,
                    title:'编辑工作报表',
                    area: ['380px','80%'],
                    shadeClose: false,
                    content: $('#workUpdate'),
                });
            break;
            //工作报表-删除
            case 'delete':
                layer.confirm('确认要删除吗？',function(){
                    $.ajax({
                        async: true,
                        url: '/work/delete',
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

    // 工作报表添加-提交
    form.on('submit(subInsert)',function () {
        $.ajax({
            async: true,
            url: '/work/insert',
            type: 'post',
            data: $('#workFormInsert').serialize(),
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

    //工作报表更新-提交
    form.on('submit(subUpdate)',function () {
        $.ajax({
            async: true,
            url: '/work/update',
            type: 'post',
            data: $('#workFormUpdate').serialize(),
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
    //工作报表导出-提交
    form.on('submit(subExport)',function (){
        let beginDate = $('input[id=beginDate]').val();
        let endDate = $('input[id=endDate]').val();
        window.location="/work/export?beginDate="+beginDate+"&endDate="+endDate;
    })
    form.render();
});