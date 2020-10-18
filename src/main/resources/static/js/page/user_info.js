$(function() {
    //渲染表格
    layui.use(['form','laydate','table'],function(){
        let form = layui.form;
        let laydate = layui.laydate;
        let table = layui.table;
        laydate.render({
            elem: '#month',
            type: 'month',
            trigger: 'click',
            format: 'yyyy-MM'
        });

        //渲染数据表格
        table.render({
            elem: '#table'
            ,height: 550
            ,url: '/user/login_log' //数据接口
            ,page: true
            ,toolbar: false
            ,cols: [[ //表头
                {type: 'numbers', title: '序号', align:'center', width:60, sort: true}
                ,{field: 'userName', title: '用户', align:'center', width:120, sort: true}
                ,{field: 'name', title: '姓名', align:'center', width:120, sort: true}
                ,{field: 'ip', title: '客户端IP', align:'center', width:150, sort: true}
                ,{field: 'content', title: '操作内容', align:'center', width:200, sort: true}
                ,{field: 'state', title: '操作状态', align:'center', width:120,templet:'#state', sort: true}
                ,{field: 'createTime', title: '操作时间', align:'center',templet :
                        "<div>{{layui.util.toDateString(d.createTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
            ]]
        });

        form.on('select()',function () {
            getJob();
        });
        form.render();
        form.verify({
            confirmPwd:function (value) {
                if($('input[name=password]').val() != value){
                    return "两次密码输入不一致!";
                }
            }
        });
        //用户更新-提交
        form.on('submit(subUpdate)', function () {
            $.ajax({
                async: true,
                url: '/user/update',
                type: 'post',
                data: $('#FormUser').serialize(),
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
        //修改密码-提交
        form.on('submit(subPwd)',function () {
            $.ajax({
                async: true,
                url: '/user/change_pwd',
                type: 'post',
                data: $('form[id=changePwdForm]').serialize(),
                dataType: 'text',
                success: function (data) {
                    if(data == 1){
                        layer.alert('修改成功！',{
                            title: '提示框',
                            icon:1,
                        },function(){
                            window.location.reload();
                        });
                    }else{
                        layer.alert('修改失败！',{
                            title: '提示框',
                            icon:2,
                        },function(){
                            window.location.reload();
                        });
                    }
                }
            });
        });
    });
});

//修改个人资料
function update(sex,deptId,jobId){
    if (sex == '保密') $('input[id=sex0]').prop("checked", 'checked');
    if (sex == '男') $('input[id=sex1]').prop("checked", 'checked');
    if (sex == '女') $('input[id=sex2]').prop("checked", 'checked');
    $('select[id=deptSelect]').val(deptId);
    this.getJob(deptId,'jobSelect');
    $('select[id=jobSelect]').val(jobId);
    $('.text_info').attr('type', 'text');
    $('span[class=user_info]').addClass('display-0');
    $('.input_info').removeClass('display-0');
    $('#changeInfoButton').css('display','none')
    $('#saveInfoButton').css('display','inline')
    layui.form.render();
}

//部门职务级联下拉列表
function getJob(deptId,selectId){
    //清空职务下拉菜单
    $('select[id='+selectId+']').empty();
    //ajax查询返回特定部门ID的职务列表
    $.ajax({
        async: false,
        timeoutSeconds: 1,
        url: '/job/findByDeptId',
        type: 'post',
        data: {'deptId':deptId},
        dataType: 'json',
        success: function (data) {
            //循环取出职务列表
            for(let i=0;i<data.length;i++){
                //向职务下来菜单中添加菜单项
                $('select[id='+selectId+']').append(new Option(data[i].jobName,data[i].jobId));
            }
        }
    });
    //重新渲染下拉菜单
    layui.form.render('select');
}



//修改密码方法
function changePwd() {
    $('input[type=password]').val("");
    layer.open({
        type: 1,
        title:'密码修改',
        area: ['300px','300px'],
        shadeClose: false,
        content: $('#changePwdStyle')
    });
}
