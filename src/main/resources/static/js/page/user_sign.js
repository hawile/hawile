//对列表进行渲染
$(function() {
    //渲染layui部件
    layui.use(['form','table'],function(){
        let form = layui.form;
        let table = layui.table;

        form.on('select(dept)', function (obj) {
            if(obj.value != ""){
                getJob(obj.value);
            }
            form.render();
        });

        //渲染数据表格
        table.render({
            elem: '#table'
            ,height: 550
            ,url: '/user_sign/list'
            ,page: true
            ,limits: [10,20,30,50,100,200,500]
            ,limit: 10
            ,toolbar: false
            ,cols: [[ //表头
                {type: 'numbers', title: '序号', align:'center', width:60}
                ,{field: 'userName', title: '用户名', align:'center', width:100}
                ,{field: 'name', title: '姓名', align:'center', width:100}
                ,{field: 'sex', title: '性别', align:'center', width:60}
                ,{field: 'age', title: '年龄', align:'center', width:60}
                ,{field: 'deptName', title: '部门', align:'center', width:100}
                ,{field: 'jobName', title: '职务', align:'center', width:100}
                ,{field: 'phone', title: '电话', align:'center', width:120}
                ,{field: 'email', title: '电子邮件', align:'center', width:150}
                ,{field: 'qq', title: 'QQ号', align:'center', width:120}
                ,{field: 'state', title: '状态', align:'center', width:80,templet: '#state'}
                ,{field: 'cause', title: '原因', align:'center', width:100}
                ,{field: 'createTime', title: '申请时间', align:'center', templet :
                        "<div>{{layui.util.toDateString(d.createTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>"}
                ,{fixed: 'right',title: '操作', align:'center', width:130, toolbar: '#barDemo'}
            ]]
        });

        //监听工具栏事件
        table.on('tool(table)',function (obj){
            //获取当前行数据
            let data = obj.data;
            switch (obj.event) {
                //同意申请
                case 'permit':
                    {//给修改界面赋值
                        $('#signId').val(data.id);
                        $('#userName').val(data.userName);
                        $('#name').val(data.name);
                        $('#age').val(data.age);
                        $('#phone').val(data.phone);
                        $('#email').val(data.email);
                        $('#qq').val(data.qq);
                        $('#state').val(data.state);
                        $('#create_time').val(data.createTime);
                        if (data.sex == '保密') $('input[id=sex_0]').prop("checked", 'checked');
                        if (data.sex == '男') $('input[id=sex_1]').prop("checked", 'checked');
                        if (data.sex == '女') $('input[id=sex_2]').prop("checked", 'checked');
                        $('#dept').val(data.deptId);
                        getJob(data.deptId);
                        $('select[class="job"][name="jobId"]').val(data.jobId);
                    }
                    form.render();
                    layer.open({
                        type: 1,
                        title:'同意申请',
                        area: ['550px','80%'],
                        shadeClose: false,
                        content: $('#permit_user_style'),
                    });
                break;

                //拒绝申请
                case 'deny':
                    $('#id').val(data.id);
                    layer.open({
                        type: 1,
                        title:'拒绝申请',
                        area: ['450px','200px'],
                        shadeClose: false,
                        content: $('#deny_user_style'),
                    });
                break;

                //删除申请
                case 'delete':
                    layer.confirm('确认要删除吗？',function(){
                        $.ajax({
                            async: 'true',
                            url: '/user_sign/delete',
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

        //同意申请-提交
        form.on('submit(subPermit)', function () {
            //首次修改密码框未选中赋值
            if(!$('input[id=firstPwd]').prop('checked')){
                $('input[id=firstPwd]').val(0);
                $('input[id=firstPwd]').prop('checked',true);
            }
            $.ajax({
                async: true,
                url: '/user/insert',
                type: 'post',
                data: $('#FormPermit').serialize(),
                dataType: 'text',
                success: function(data){
                    if(data == 1){
                        $.ajax({
                            async: true
                            ,url: '/user_sign/permit'
                            ,type: 'post'
                            ,data: {id:$('#signId').val(),cause:$('#cause').val(),userName:$('#userName').val()}
                            ,success: function (){
                                layer.alert('添加成功！',{
                                    title: '提示框',
                                    icon:1,
                                },function(){
                                    location.reload();
                                });
                            }
                        });
                    }else if(data == 2){
                        layer.msg('用户名已存在！');
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

        //拒绝申请-提交
        form.on('submit(subDeny)', function () {
            $.ajax({
                async: true,
                url: '/user_sign/deny',
                type: 'post',
                data: $('#FormDeny').serialize(),
                dataType: 'text',
                success: function(data){
                    if(data == 1){
                        layer.alert('已拒绝申请！',{
                            title: '提示框',
                            icon:1,
                        },function(){
                            location.reload();
                        });
                    }else{
                        layer.alert('操作失败！',{
                            title: '提示框',
                            icon:2,
                        },function(){
                            location.reload();
                        });
                    }
                }
            });
        });
    });
});

//部门职务级联下拉列表
function getJob(deptId){
    //清空职务下拉菜单
    $('select[class="job"]').empty();
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
                $('select[class="job"]').append(new Option(data[i].jobName,data[i].jobId));
            }
        }
    });
}