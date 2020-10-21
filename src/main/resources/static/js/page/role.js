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
                {type: 'numbers'},
                {field: 'name', minWidth: 200, title: '权限名称'},
                {field: 'symbol', title: '权限标识'},
                {templet: '#barDemo', width: 120, align: 'center', title: '操作'}
            ]
        ],
        done: function () {
            layer.closeAll('loading');
            treetable.foldAll('#table');
        }
    });

    //监听工具条
    table.on('tool(table)', function (obj) {
        let data = obj.data;
        let layEvent = obj.event;

        if (layEvent === 'delete') {
            layer.msg('删除' + data.id);
        } else if (layEvent === 'edit') {
            layer.msg('修改' + data.id);
        }
    });

    $('#btn-expand').click(function () {
        treetable.expandAll('#table');
    });

    $('#btn-fold').click(function () {
        treetable.foldAll('#table');
    });
});