layui.use(['table', 'treetable'], function () {
    let $ = layui.jquery;
    let table = layui.table;
    let treetable = layui.treetable;

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
                layer.msg('编辑'+data.id);
            break;
            //权限-删除
            case 'delete':
                layer.msg('删除'+data.id);
            break;
        }
    });

    $('#btn-expand').click(function () {
        treetable.expandAll('#table');
    });

    $('#btn-fold').click(function () {
        treetable.foldAll('#table');
    });
});