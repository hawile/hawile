layui.use(['form','laydate','table'],function(){
    let form=layui.form;
    let laydate=layui.laydate;
    let table = layui.table;
    laydate.render({
        elem: '#createDate',
        trigger: 'click',
        format: 'yyyy-MM-dd'
    });
    laydate.render({
        elem: '#up_createDate',
        trigger: 'click',
        format: 'yyyy-MM-dd'
    });

    //渲染数据表格
    table.render({
        elem: '#table'
        ,height: 550
        ,url: '/csr/list' //数据接口
        ,page: true
        ,toolbar: '#toolbarDemo'
        ,cols: [[ //表头
            {type: 'checkbox', align:'center', width:40}
            ,{type: 'numbers', title: '序号', align:'center', width:50}
            ,{field: 'vpnName', title: 'VPN账号', align:'center', width:150, sort: true}
            ,{field: 'ftpName', title: 'FTP账号', align:'center', width:150, sort: true}
            ,{field: 'name', title: '客户名称', align:'center', width:200}
            ,{field: 'createDate', title: '开通时间', align:'center', width:120, sort: true}
            ,{field: 'path', title: 'FTP访问目录', align:'center', width:200}
            ,{field: 'state', title: '状态', align:'center', width:80, sort: true, templet: '#state'}
            ,{field: 'remark', title: '备注', align:'center', width:150, sort: true}
            ,{field: 'updateTime', title: '修改时间', align:'center',templet :
                    "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
            ,{fixed: 'right',title: '操作', width:130, align:'center', toolbar: '#barDemo'}
        ]]
    });

    //监听头部工具栏事件
    table.on('toolbar(table)',function (obj){
        let checkStatus = table.checkStatus('table');
        switch (obj.event){
            //账号-添加
            case 'insert':
                $('input').val('');
                $('textarea').val('');
                // 给date设置默认值
                let now = new Date();
                //格式化日，如果小于9，前面补0
                let day = ("0" + now.getDate()).slice(-2);
                //格式化月，如果小于9，前面补0
                let month = ("0" + (now.getMonth() + 1)).slice(-2);
                //拼装完整日期格式
                let today = now.getFullYear()+"-"+(month)+"-"+(day) ;
                //完成赋值
                $('input[id="createDate"]').val(today);
                layer.open({
                    type: 1,
                    title:'添加客户',
                    area: ['400px','80%'],
                    shadeClose: false,
                    content: $('#add_csr_style'),
                });
                break;
            //账号-批量修改状态
            case 'state':
                if(checkStatus.data.length==0) {
                    parent.layer.msg('请先选择要修改的数据行！', {icon: 2});
                    return;
                }
                let ids = checkStatus.data[0].id;
                for(let i=1;i<checkStatus.data.length;i++){
                    ids += ","+checkStatus.data[i].id;
                }
                $('#ids').val(ids);
                layer.open({
                    type: 1,
                    title:'修改状态',
                    area: ['400px','300px'],
                    shadeClose: false,
                    content: $('#state_csr_style'),
                });
                break;
            case 'delete':
                if(checkStatus.data.length==0) {
                    parent.layer.msg('请先选择要删除的数据行！', {icon: 2});
                    return;
                }
                layer.confirm('确认要删除吗？',function(){
                    let ids = checkStatus.data[0].id;
                    for(let i=1;i<checkStatus.data.length;i++){
                        ids += ","+checkStatus.data[i].id;
                    }
                    $.ajax({
                        async: true,
                        url: '/csr/delete_many',
                        type: 'post',
                        data: {'ids':ids},
                        dataType: 'text',
                        success: function(data){
                            //获取批量修改的账户数量
                            let count = checkStatus.data.length;
                            if(data == count){
                                layer.alert('删除成功！',{
                                    title: '提示框',
                                    icon:1,
                                },function(){
                                    location.reload();
                                });
                            }else if (data >0) {
                                layer.alert('部分删除失败！',{
                                    title: '提示框',
                                    icon:2,
                                },function(){
                                    location.reload();
                                });
                            }else {
                                layer.alert('全部删除失败！',{
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

    //监听工具栏事件
    table.on('tool(table)',function (obj){
        //获取当前行的数据
        let data = obj.data;
        switch (obj.event){
            //账号-编辑
            case 'edit':
                $('#id').val(data.id);
                $('#up_vpnName').val(data.vpnName);
                $('#up_ftpName').val(data.ftpName);
                $('#up_name').val(data.name);
                $('#up_createDate').val(data.createDate);
                $('#up_path').val(data.path);
                $('#up_remark').val(data.remark);
                $('input[class=state][value='+data.state+']').prop('checked',true);
                form.render('radio');
                layer.open({
                    type: 1,
                    title:'编辑客户',
                    area: ['400px','80%'],
                    shadeClose: false,
                    content: $('#up_csr_style'),
                });
                break;
            //账号-删除
            case 'delete':
                layer.confirm('确认要删除吗？',function(){
                    $.ajax({
                        async: true,
                        url: '/csr/delete',
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

    //账号添加-提交
    form.on('submit(subInsert)',function (){
        $.ajax({
            async: true,
            url: '/csr/insert',
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

    //账号修改-提交
    form.on('submit(subUpdate)',function (){
        $.ajax({
            async: true,
            url: '/csr/update',
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

    //账号批量修改状态-提交
    form.on('submit(subState)',function (){
        $.ajax({
            async: true
            ,url: '/csr/update_many_state'
            ,type: 'post'
            ,data: $('#FormState').serialize()
            ,dataType: 'text'
            ,success: function (data){
                //获取批量修改的账户数量
                let count = $('#ids').val().split(',').length;
                if(data == count){
                    layer.alert('修改成功！',{
                        title: '提示框',
                        icon:1,
                    },function(){
                        location.reload();
                    });
                }else if (data >0) {
                    layer.alert('部分修改失败！',{
                        title: '提示框',
                        icon:2,
                    },function(){
                        location.reload();
                    });
                }else {
                    layer.alert('全部修改失败！',{
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

/* 同步FTP访问路径 */
function setPath(obj){
    let vpnName=$(obj).val();
    $('#ftpName').val('');
    $('#path').val('');
    $('#ftpName').val(vpnName);
    $('#path').val('D:/数据接收主目录/'+vpnName);
}
function setPath2(obj){
    let vpnName=$(obj).val();
    $('#up_ftpName').val('');
    $('#up_path').val('');
    $('#up_ftpName').val(vpnName);
    $('#up_path').val('D:/数据接收主目录/'+vpnName);
}