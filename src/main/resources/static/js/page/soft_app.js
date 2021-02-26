layui.use(['form','table','upload','element'],function(){
    let form = layui.form;
    let table = layui.table;
    let upload = layui.upload;
    let element = layui.element;
    let random = 0;
    let uploadState = 0;
    //渲染数据表格
    table.render({
        elem: '#table'
        ,height: 550
        ,url: '/soft_app/list' //数据接口
        ,page: true
        ,limits: [10,20,30,50,100,200,500]
        ,limit: 10
        ,toolbar: '#toolbarDemo'
        ,cols: [[ //表头
            {type: 'checkbox', align:'center', width:40}
            ,{type: 'numbers', title: 'ID',align: "center" , width:50}
            ,{field: 'name', title: '软件名称',align: "center" , width:300, sort: true}
            ,{field: 'version', title: '版本号',align: "center" , width:100}
            ,{field: 'reason', title: '注释',align: "center" , width:400}
            ,{field: 'size', title: '软件大小（KB）',align: "center" , width:150, sort: true}
            ,{field: 'updateTime', title: '更新时间',align: "center" ,templet :
                    "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>"
                , width:200, sort: true}
            ,{fixed: 'right',title: '操作', width:180, align:'center', toolbar: '#barDemo'}
        ]]
    });
    upload.render({
        elem: '#upload'
        ,url: '/soft_app/upload'
        ,accept: 'file'
        ,auto: false
        ,data: {fileName:function (){return $('input[id=random]').val()}}
        ,bindAction: '#subInsert'
        ,before: function (obj){
            //预读本地文件，如果是多文件，则会遍历。(不支持ie8/9)
            obj.preview(function(index, file){
                //获取当前文件扩展名
                let extsIndex = file.name.lastIndexOf('.');
                let ext = file.name.substring(extsIndex);
                //设置下载文件名
                $('input[id=path]').val(random+ext);
                //获取文件大小
                let fileSize = (file.size/1024).toFixed(0);
                //设置文件大小
                $('input[id=size]').val(fileSize);
            });
        },progress: function(n){
            element.progress('fileProcess', n+"%");
        },done: function (){
            uploadState = 1;
        },error: function (){
            uploadState = 2;
        }
    });
    upload.render({
        elem: '#upload2'
        ,url: '/soft_app/upload'
        ,accept: 'file'
        ,data: {fileName:function (){return $('input[id=random]').val()}}
        ,auto: false
        ,bindAction: '#subUpdate'
        ,before: function (obj){
            //预读本地文件，如果是多文件，则会遍历。(不支持ie8/9)
            obj.preview(function(index, file){
                //获取当前文件扩展名
                let extsIndex = file.name.lastIndexOf('.');
                let ext = file.name.substring(extsIndex);
                //设置下载文件名
                $('input[id=up_path]').val(random+ext);
                //获取文件大小
                let fileSize = (file.size/1024).toFixed(0);
                //设置文件大小
                $('input[id=up_size]').val(fileSize);
            });
        },progress: function(n){
            element.progress('fileProcess', n+"%");
        },done: function (){
            uploadState = 1;
        },error: function (){
            uploadState = 2;
        }
    });

    //监听头部工具栏事件
    table.on('toolbar(table)',function (obj){
        switch (obj.event){
            //软件-添加
            case 'insert':

                {//初始化表格
                    $('input').val('');
                    uploadState = 0;
                    random = getRandom16(16);
                    $('input[id=random]').val(random);
                }
                layer.open({
                    type: 1,
                    title:'添加软件',
                    area: ['400px','80%'],
                    shadeClose: false,
                    content: $('#add_file_style'),
                });
            break;
        }
    });

    //监听工具栏事件
    table.on('tool(table)',function (obj){
        let data = obj.data;
        switch (obj.event) {
            //软件-编辑
            case 'edit':
                {//初始化表格
                    $('input[type=file]').val('');
                    $('#id').val(data.id);
                    $('#up_name').val(data.name);
                    $('#up_version').val(data.version);
                    $('#up_reason').val(data.reason);
                    uploadState = 0;
                    random = getRandom16(16);
                    $('input[id=random]').val(random);
                }
                layer.open({
                    type: 1,
                    title:'编辑软件',
                    area: ['400px','80%'],
                    shadeClose: false,
                    content: $('#up_file_style'),
                });
            break;
            //软件-删除
            case 'delete':
                layer.confirm('确认要删除吗？',function(){
                    $.ajax({
                        async: 'true',
                        url: '/soft_app/delete',
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
            case 'download':
                window.location="/soft_app/download?download="+data.path+"&name="+data.name;
            break;
        }
    });

    //添加软件-提交
    form.on('submit(subInsert)',function (){
        $('button[id=subInsert]').attr('disabled','disabled')
        setTimeout(function (){
            $.ajax({
                url: '/soft_app/insert'
                ,type: 'post'
                ,data: $('#FormAdd').serialize()
                ,success: function(data){
                    if(data == 1){
                        let int = setInterval(function (){
                            if(uploadState == 2){
                                layer.alert('文件上传失败,请重新上传！',{
                                    title: '提示框',
                                    icon:2,
                                },function(){
                                    location.reload();
                                });
                                clearInterval(int);
                            }else {
                                layer.alert('添加成功！',{
                                    title: '提示框',
                                    icon:1,
                                },function(){
                                    location.reload();
                                });
                                clearInterval(int);
                            }
                        }, 1000);

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
        }, 500)

    });

    //修改软件-提交
    form.on('submit(subUpdate)',function (){
        setTimeout(function (){
            $.ajax({
                url: '/soft_app/update'
                ,type: 'post'
                ,data: $('#FormUp').serialize()
                ,success: function(data){
                    if(data == 1){
                        let int = setInterval(function (){
                            if(uploadState == 2){
                                layer.alert('文件上传失败,请重新上传！',{
                                    title: '提示框',
                                    icon:2,
                                },function(){
                                    location.reload();
                                });
                                clearInterval(int);
                            }else {
                                layer.alert('修改成功！',{
                                    title: '提示框',
                                    icon:1,
                                },function(){
                                    location.reload();
                                });
                                clearInterval(int);
                            }
                        }, 1000);

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
        },500)
    });

    form.render();
});

//获取16进制随机数
function getRandom16(num){
    //设置第一个随机数
    let h = Math.floor(Math.random()*16).toString(16)
    //循环设置其他随机数
    for(let i=1;i<num;i++){
        //获取0-15并通过toString转16进制
        h+=Math.floor(Math.random()*16).toString(16);
    }
    //将小写字母转换成大写字母
    h = h.toUpperCase();
    return h;
}