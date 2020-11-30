let UPLOAD_FILES,uploadListIns,uploadListIns2;
$(function($) {
    layui.use(['form','upload','element','table'],function(){
        let table = layui.table;
        let form = layui.form;
        let upload = layui.upload;
        let element = layui.element;
        //渲染数据表格
        table.render({
            elem: '#table'
            ,height: 550
            ,url: '/form/list' //数据接口
            ,page: true
            ,limits: [10,20,30,50,100,200,500]
            ,limit: 10
            ,toolbar: '#toolbarDemo'
            ,cols: [[ //表头
                {type: 'checkbox', align:'center', width:40}
                ,{type: 'numbers', title: '序号', align:'center', width:60, sort: true}
                ,{field: 'serial', title: '表单编号', align:'center', width:200, sort: true}
                ,{field: 'name', title: '表单名称', align:'center', width:300, sort: true}
                ,{field: 'version', title: '版本号', align:'center', width:80}
                ,{field: 'deptName', title: '部门', align:'center', width:100, sort: true}
                ,{field: 'remark', title: '备注', align:'center', width:150}
                ,{field: 'fileSize', title: '存储(Kb)', align:'center', width:100, sort: true}
                ,{field: 'updateTime', title: '更新时间', align:'center',templet :
                        "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
                ,{fixed: 'right',title:'操作', align:'center', toolbar: '#barDemo', width: 250}
            ]]
        });

        //添加上传文件
        uploadListIns = upload.render({
            elem: '#upload',
            url: '/form/upload',
            accept: 'file',
            exts: 'pdf|zip|rar|xls|xlsx|xlsm|doc|docx|docm|txt',
            multiple: true,
            size: 20480,
            number: 2,
            data: {serial:function (){return $('input[name=serial]').val()}},
            auto: false,
            bindAction: '#submit',
            choose: function (obj){
                //将每次选择的文件追加到文件队列
                UPLOAD_FILES = obj.pushFile();
                clearFile();
                //预读本地文件，如果是多文件，则会遍历。(不支持ie8/9)
                obj.preview(function(index, file){
                    let extsIndex = file.name.lastIndexOf('.');
                    let exts = file.name.substring(extsIndex);
                    if(exts != '.pdf'){
                        $('input[name=exts]').val(exts);
                        $('input[name=size]').val(file.size);
                    }
                    $('#fileList').append('<tr id="file'+index+'"></tr>');
                    $('tr[id=file'+index+']').append('<td>'+file.name+'</td>');
                    $('tr[id=file'+index+']').append('<td>'+(file.size/1024).toFixed(0) +'kb'+'</td>');
                    $('tr[id=file'+index+']').append('<td><button class="layui-btn layui-btn-xs ' +
                        'layui-btn-danger fileList-delete_'+index+'">删除</button></td>');
                    $('.fileList-delete_'+index).on('click',function (){
                        delete UPLOAD_FILES[index]; //删除对应的文件
                        uploadListIns.config.elem.next()[0].value = '';
                        $('tr[id=file'+index+']').remove();
                        if($('#fileList').find('tr').val() == undefined){
                            $('#fileListDiv').addClass('display-0');
                        }
                    });
                });
                obj.pushFile();
                $('#fileListDiv').removeClass('display-0');
            },
            progress: function(n){
                element.progress('fileProcess', n+"%");
            }
        });

        //修改上传文件
        uploadListIns2 = upload.render({
            elem: '#upload2',
            url: '/form/upload',
            accept: 'file',
            exts: 'pdf|zip|rar|xls|xlsx|xlsm|doc|docx|docm|txt',
            multiple: true,
            size: 20480,
            number: 2,
            data: {
                serial: function () {
                    return $('input[name=serial]').val()
                }
            },
            auto: false,
            bindAction: '#submit2',
            choose: function (obj) {
                //将每次选择的文件追加到文件队列
                UPLOAD_FILES = obj.pushFile();
                clearFile();
                //预读本地文件，如果是多文件，则会遍历。(不支持ie8/9)
                obj.preview(function (index, file) {
                    let extsIndex = file.name.lastIndexOf('.');
                    let exts = file.name.substring(extsIndex);
                    if (exts != '.pdf') {
                        $('input[name=exts]').val(exts);
                        $('input[name=size]').val(file.size);
                    }
                    $('#fileList2').append('<tr id="file' + index + '"></tr>');
                    $('tr[id=file' + index + ']').append('<td>' + file.name + '</td>');
                    $('tr[id=file' + index + ']').append('<td>' + (file.size / 1024).toFixed(0) + 'kb' + '</td>');
                    $('tr[id=file' + index + ']').append('<td><button class="layui-btn layui-btn-xs ' +
                        'layui-btn-danger fileList-delete_' + index + '">删除</button></td>');
                    $('.fileList-delete_' + index).on('click', function () {
                        delete UPLOAD_FILES[index]; //删除对应的文件
                        uploadListIns2.config.elem.next()[0].value = '';
                        $('tr[id=file' + index + ']').remove();
                        if ($('#fileList2').find('tr').val() == undefined) {
                            $('#fileListDiv2').addClass('display-0');
                        }
                    });
                });
                obj.pushFile();
                $('#fileListDiv2').removeClass('display-0');
            },
            progress: function (n) {
                element.progress('fileProcess2', n + "%");
            }
        });
        //监听头部工具栏事件
        table.on('toolbar(table)',function (obj){
            switch (obj.event){
                //表单-添加
                case 'insert':
                    //初始化表格
                    $('.layui-input').val('');
                    $('tbody[name=fileList]').html('');
                    $('div[name=fileListDiv]').addClass('display-0');
                    clearFile();
                    layer.open({
                        type: 1,
                        title:'添加表单',
                        area: ['450px','90%'],
                        shadeClose: false,
                        content: $('#add_file_style'),
                    });
                break;
                //填写表单-管理
                case 'input':
                    layer.open({
                        type: 2,
                        title:'填写表单',
                        area: ['1000px','95%'],
                        shadeClose: false,
                        content: '/form_input',
                    });
                    break;
            }
        });

        //监听工具栏事件
        table.on('tool(table)',function (obj){
            let data = obj.data;
            switch (obj.event) {
                //表单-编辑
                case 'edit':
                    $('input[id=id]').val(data.id);
                    $('input[id=up_serial]').val(data.serial);
                    $('input[id=serial]').val(data.serial);
                    $('input[id=up_name]').val(data.name);
                    $('input[id=up_version]').val(data.version);
                    $('input[id=up_remark]').val(data.remark);
                    $('select[id=up_deptId]').val(data.deptId);
                    $('tbody[name=fileList]').html('');
                    $('div[name=fileListDiv]').css('display', 'none');
                    clearFile();
                    form.render();
                    layer.open({
                        type: 1,
                        title: '编辑表单',
                        area: ['450px', '90%'],
                        shadeClose: false,
                        content: $('#up_file_style'),
                    });
                    break;
                case 'delete':
                    layer.confirm('确认要删除吗？',function(){
                        $.ajax({
                            async: 'true',
                            url: '/form/delete',
                            type: 'post',
                            data: {'id':data.id,'name':data.name,'path':data.path,
                                'download':data.download},
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
                //文件下载
                case 'download':
                    window.location="/form/download?download="+data.download+"&name="+data.name;
                    break;
                //文件浏览
                case 'detail':
                    layer.open({
                        type: 2,
                        title: data.name,
                        area: ['90%', '90%'],
                        shadeClose: false,
                        content: '/form/detail?path='+data.path,
                    });
                    break;
            }
        });

        //添加文件-提交
        form.on('submit(subInsert)',function (){
            $.ajax({
                async: true,
                url: '/form/insert',
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
                    }else if(data == 2){
                        layer.alert('已存在该编号文件，添加失败！',{
                            title: '提示框',
                            icon:2,
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

        //修改文件-提交
        form.on('submit(subUpdate)',function (){
            $.ajax({
                async: true,
                url: '/form/update',
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

//清空文件队列
function clearFile() {
    for (let x in UPLOAD_FILES) {
        delete UPLOAD_FILES[x];
        uploadListIns.config.elem.next()[0].value = '';
        uploadListIns2.config.elem.next()[0].value = '';
    }
}