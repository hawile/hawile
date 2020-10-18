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
            elem: '#table'  //绑定table标签
            ,height: 550    //高度
            ,url: '/user/list' //数据接口
            ,page: true //是否启用分页
            ,toolbar: '#toolbarDemo'    //绑定头部工具栏标签
            ,cols: [[ //表头
                {type: 'checkbox', align:'center', width:40}
                ,{type: 'numbers', title: '序号', align:'center', width:60}
                ,{field: 'userName', title: '用户名', align:'center', width:100, sort: true}
                ,{field: 'name', title: '姓名', align:'center', width:100, sort: true}
                ,{field: 'sex', title: '性别', align:'center', width:60}
                ,{field: 'age', title: '年龄', align:'center', width:60}
                ,{field: 'deptName', title: '部门', align:'center', width:100, sort: true}
                ,{field: 'jobName', title: '职务', align:'center', width:100, sort: true}
                ,{field: 'phone', title: '电话', align:'center', width:100}
                ,{field: 'email', title: '电子邮件', align:'center', width:100}
                ,{field: 'qq', title: 'QQ号', align:'center', width:120}
                ,{field: 'authName', title: '权限组', align:'center', width:100, sort: true}
                ,{field: 'enabled', title: '状态', align:'center', width:100,templet: '#state', sort: true}
                ,{field: 'createTime', title: '加入时间', align:'center', templet :
                        "<div>{{layui.util.toDateString(d.updateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
                ,{fixed: 'right',title: '操作', align:'center', toolbar: '#barDemo', width:180}
            ]]
        });

        //监听头部工具栏事件
        table.on('toolbar(table)',function (obj){
            switch (obj.event){
                //用户-添加
                case 'insert':
                    {//初始化表格
                        //清空所有input文本框的值
                        $('input[type=text]').val('');
                        //取消勾选所有复选框的值
                        $('input[type=checkbox][name$=Query]').prop('checked',false);
                        //勾选首次修改密码复选框
                        $('input[id=firstPwd]').prop('checked',true);
                        //清空所有textarea文本框值
                        $('textarea').val('');
                        //重新渲染表格
                        form.render();
                    }
                    //打开添加用户界面
                    layer.open({
                        type: 1,
                        title:'添加用户',
                        area: ['550px','80%'],
                        shadeClose: false,
                        content: $('#add_user_style'),
                    });
                break;
            }
        });

        //监听工具栏事件
        table.on('tool(table)',function (obj){
            //获取当前行数据
            let data = obj.data;
            switch (obj.event) {
                //用户-停启用
                case 'state':
                    if(id==1){
                        layer.alert('禁止停用！',{
                            title: '提示框',
                            icon:0,
                        });
                        return false;
                    }
                    let stateContent = '确认要停用吗？';
                    if(data.enabled==0){
                        stateContent = '确认要启用吗？';
                    }
                    layer.confirm(stateContent,function(){
                        $.ajax({
                            async: true,
                            url: '/user/enabled',
                            type: 'post',
                            data: {'id':data.id,'enabled':data.enabled,'userName':data.userName},
                            dataType: 'text',
                            success: function(data){
                                if(data == 1){
                                    layer.alert('已启用！',{
                                        title: '提示框',
                                        icon:1,
                                    },function(){
                                        location.reload();
                                    });
                                }else if(data == 2){
                                    layer.alert('已停用！',{
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
                break;

                //用户-编辑
                case 'edit':
                    {//初始化重置密码块
                        $('input[name=resetPwd]').prop('checked',false);
                        $('div[name=resetPwd]').addClass('display-0');
                        $('input[id=pwd_2]').attr('lay-verify','');
                        $('input[id=pwd_2_2]').attr('lay-verify','');
                        $('.resetPwd').prop('disabled',true);
                        $('input[name=firstPwd]').prop('checked',false);
                    }
                    {//给修改界面赋值
                        $('#id').val(data.id);
                        $('#userName_2').val(data.userName);
                        $('#name_2').val(data.name);
                        $('#age_2').val(data.age);
                        $('#phone_2').val(data.phone);
                        $('#email_2').val(data.email);
                        $('#qq_2').val(data.qq);
                        $('#authority_2').val(data.authId);
                        $('#enabled_2').val(data.enabled);
                        $('#create_time_2').val(data.createTime);
                        $('#userName_2').val(data.userName);
                        if (data.sex == '保密') $('input[id=sex_0_2]').prop("checked", 'checked');
                        if (data.sex == '男') $('input[id=sex_1_2]').prop("checked", 'checked');
                        if (data.sex == '女') $('input[id=sex_2_2]').prop("checked", 'checked');
                        $('#dept_2').val(data.deptId);
                        getJob(data.deptId);
                        $('select[class="job"][name="jobId"]').val(data.jobId);
                        let fileId = [], formId = [];
                        if (data.fileQuery != null) {
                            fileId = data.fileQuery.split(",");
                            for (let i = 0; i < fileId.length; i++) {
                                $('input:checkbox[id=fileQuery_' + fileId[i] + ']').prop('checked', 'checked');
                            }
                        } else {
                            $('input:checkbox[name=fileQuery]').removeProp('checked')
                        }
                        if (data.formQuery != null) {
                            formId = data.formQuery.split(",");
                            for (let i = 0; i < formId.length; i++) {
                                $('input:checkbox[id=formQuery_' + formId[i] + ']').prop('checked', 'checked');
                            }
                        } else {
                            $('input:checkbox[name=formQuery]').removeProp('checked')
                        }
                    }
                    form.render();
                    layer.open({
                        type: 1,
                        title:'编辑用户',
                        area: ['550px','80%'],
                        shadeClose: false,
                        content: $('#up_user_style'),
                    });
                break;

                //用户-删除
                case 'delete':
                    if(id==1){
                        layer.alert('禁止删除！',{
                            title: '提示框',
                            icon:0,
                        });
                        return false;
                    }
                    layer.confirm('确认要删除吗？',function(){
                        $.ajax({
                            async: true,
                            url: '/user/delete',
                            type: 'post',
                            data: {'id':data.id,'userName':data.userName},
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



        //重置密码选择框方法
        form.on('checkbox(resetPwd)', function (obj) {
            let reset = $(obj.elem);
            //判断是否为选中状态
            if(reset.prop('checked') == true){
                //移除display:none属性
                $('div[name=resetPwd]').removeClass('display-0');
                //添加表单验证规则
                $('input[id=pwd_2]').attr('lay-verify','required');
                $('input[id=pwd_2_2]').attr('lay-verify','required|confirmPwd');
                //移除只读属性
                $('.resetPwd').removeProp('disabled');
                //设置为首次修改密码
                $('input[name=firstPwd]').prop('checked',true);
                form.render('checkbox');
            }else{
                //添加display:none属性
                $('div[name=resetPwd]').addClass('display-0');
                //移除表单验证规则
                $('.resetPwd').attr('lay-verify','');
                //添加只读属性
                $('.resetPwd').prop('disabled',true);
                //设置为首次不修改密码
                $('input[name=firstPwd]').prop('checked',false);
                form.render('checkbox');
            }
        });
        form.render();
        form.verify({
            confirmPwd:function (value) {
                if($('input[name=password]').val() != value){
                    return "两次密码输入不一致!";
                }
            }
        });
        //用户新增-提交
        form.on('submit(subInsert)', function () {
            //首次修改密码框未选中赋值
            if(!$('input[id=firstPwd]').prop('checked')){
                $('input[id=firstPwd]').val(0);
                $('input[id=firstPwd]').prop('checked',true);
            }
            $.ajax({
                async: true,
                url: '/user/insert',
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
                        layer.alert('用户名已存在！',{
                            title: '提示框',
                            icon:2,
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

        //用户更新-提交
        form.on('submit(subUpdate)', function () {
            $.ajax({
                async: true,
                url: '/user/update',
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