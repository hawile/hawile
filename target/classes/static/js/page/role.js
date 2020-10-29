layui.use(['table', 'treetable', 'form'], function () {
    let $ = layui.jquery;
    let table = layui.table;
    let treetable = layui.treetable;
    let form = layui.form;

    // 渲染表格
    layer.load(2);
    treetable.render({
        treeColIndex: 1
        ,treeSpid: 0
        ,treeIdName: 'authId'
        ,treePidName: 'parentId'
        ,elem: '#table'
        ,url: '/role/list'
        ,toolbar: '#toolbarDemo'
        ,page: false
        ,cols: [
            [
                {type: 'numbers'}
                ,{field: 'name', minWidth: 200, title: '权限名称'}
                ,{field: 'symbol', title: '权限标识'}
                ,{field: 'users', title: '用户'}
                ,{field: 'updateTime', title: '修改时间', align:'center',templet :
                    "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
                ,{templet: '#barDemo', width: 120, align: 'center', title: '操作'}
            ]
        ],
        done: function () {
            layer.closeAll('loading');
            treetable.foldAll('#table');
        }
    });

    //监听头部工具条
    table.on('toolbar(table)', function (obj) {
        switch (obj.event){
            //权限-添加
            case 'insert':
                $('input').val('');
                layer.open({
                    type: 1,
                    title:'添加权限',
                    area: ['400px','90%'],
                    shadeClose: false,
                    content: $('#add_role_style'),
                });
            break;
        }
    });

    //监听工具条
    table.on('tool(table)', function (obj) {
        let data = obj.data;
        switch (obj.event){
            //权限-编辑
            case 'edit':
                $('#name2').val(data.name);
                $('#symbol2').val(data.symbol);
                $('#icon2').val(data.icon);
                $('#href2').val(data.href);
                $('#parentId2').val(data.parentId);
                $('#name2').val(data.name);
                layer.open({
                    type: 1,
                    title:'添加权限',
                    area: ['400px','90%'],
                    shadeClose: false,
                    content: $('#add_role_style'),
                });
            break;
            //权限-删除
            case 'delete':
                layer.msg('删除'+data.id);
            break;
        }
    });

    //渲染数据表格
    table.render({
        elem: '#userTable'  //绑定table标签
        ,height: 300    //高度
        ,url: '/user/list' //数据接口
        ,page: false //是否启用分页
        ,toolbar: false
        ,cols: [[ //表头
            {type: 'checkbox', align:'center', width:40}
            ,{type: 'numbers', title: '序号', align:'center', width:40}
            ,{field: 'userName', title: '用户名', width:100, align:'center'}
            ,{field: 'name', title: '姓名', align:'center', width:115}
        ]]
    });

    //权限添加-提交
    form.on('submit(subInsert)',function (){
        let checkStatus = table.checkStatus('userTable');
        let count = checkStatus.data.length
        if(count != 0) {
            let ids = checkStatus.data[0].id;
            for(let i=1;i<count;i++){
                ids += ","+checkStatus.data[i].id;
            }
            $('#ids').val(ids);
        } else {
            $('#ids').val(0);
        }
        $.ajax({
            async: true
            ,url: '/role/insert'
            ,type: 'post'
            ,data: $('#FormAdd').serialize()
            ,dataType: 'text'
            ,success: function (data){
                if(data == 1){
                    layer.alert('添加成功！',{
                        title: '提示框',
                        icon:1,
                    },function(){
                        location.reload();
                    });
                }else {
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

    $('#btn-expand').click(function () {
        treetable.expandAll('#table');
    });

    $('#btn-fold').click(function () {
        treetable.foldAll('#table');
    });
});