layui.use(['form', 'table'], function () {
    let table = layui.table;
    let form = layui.form;

    //渲染数据表格
    table.render({
        elem: '#table'
        , height: 350
        , url: '/form_input/list' //数据接口
        ,limit: 5
        , page: true
        ,limits: [10,20,30,50,100,200,500]
        ,limit: 10
        , toolbar: '#toolbarDemo'
        ,defaultToolbar: ''
        , cols: [[ //表头
            {type: 'numbers', title: '序号', align:'center', width: 80, sort: true}
            , {field: 'serial', title: '表单编号', align:'center', sort: true}
            , {field: 'name', title: '表单名称', align:'center', sort: true}
            , {fixed: 'right', title: '操作', width: 100, align: 'center', toolbar: '#input'}]]
    });

    //监听头部工具栏事件
    table.on('toolbar(table)',function (obj){
        if (obj.event == 'record'){
            table.render({
                elem: '#table'
                , height: 350
                , url: '/form_input/record' //数据接口
                ,limit: 5
                , page: true
                , toolbar: '#toolbarDemo'
                ,defaultToolbar: ''
                , cols: [[ //表头
                    {type: 'numbers', title: '序号', width: 60, sort: true}
                    , {field: 'name', title: '填写人', width: 90, sort: true}
                    , {field: 'formNo', title: '表单编号', width: 130, sort: true}
                    , {field: 'formName', title: '表单名称', width: 200, sort: true}
                    , {field: 'formPath', title: '表单文件', width: 200, sort: true}
                    , {field: 'createTime', title: '填写时间', sort: true, templet :
                            "<div>{{layui.util.toDateString(d.createTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>"}
                    , {fixed: 'right', title: '操作', width: 100, align: 'center', toolbar: '#record'}]]
            });
        }
        if(obj.event == 'input'){
            //渲染数据表格
            table.render({
                elem: '#table'
                , height: 350
                , url: '/form_input/list' //数据接口
                ,limit: 5
                , page: true
                , toolbar: '#toolbarDemo'
                ,defaultToolbar: ''
                , cols: [[ //表头
                    {type: 'numbers', title: '序号', width: 80, sort: true}
                    , {field: 'serial', title: '表单编号', sort: true}
                    , {field: 'name', title: '表单名称', sort: true}
                    , {fixed: 'right', title: '操作', width: 100, align: 'center', toolbar: '#input'}]]
            });
        }
    });

    //监听工具栏事件
    table.on('tool(table)',function(obj){
        let data = obj.data;
        if (obj.event == 'input'){
            let serial = data.serial;
            let content = "/form_input/form/Form" + serial.substring(serial.length-5);
            layer.open({
                type: 2
                ,title: data.name
                ,area: ['500px','95%']
                ,shadeClose: false
                ,content: content
            });
        }
        if (obj.event == 'download'){
            window.location='/form_input/download?fileName='+data.formPath;
            layer.msg("正在下载中...");
        }
    });

    //填写表单-提交
    form.on('submit(submit)',function (obj){
        let formId = $(obj.elem).attr('id');
        $.ajax({
            async: true
            ,url: '/form_input/'+formId
            ,type: 'post'
            ,data: $('#form'+formId).serialize()
            ,dataType: 'json'
            ,success: function (data){
                if(!$.isEmptyObject(data)){
                    parent.window.location='/form_input/download?fileName='+data.fileName+
                        "&name="+data.name;
                    parent.parent.layer.msg('填写成功,正在下载...');
                    parent.layer.closeAll();
                }else{
                    layer.alert('填写失败！',{
                        title: '提示框',
                        icon:2,
                    },function(){
                        parent.location.reload();
                    });
                }
            }
        });
    });

    form.render();
});