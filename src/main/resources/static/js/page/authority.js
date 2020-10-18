//对列表进行渲染
$(function (){
    layui.use(['form','table'],function(){
        let form = layui.form;
        let table = layui.table;

        //渲染数据表格
        table.render({
            elem: '#table'
            ,height: 550
            ,url: '/auth/list' //数据接口
            ,page: true
            ,toolbar: '#toolbarDemo'
            ,cols: [[ //表头
                {type: 'checkbox', width:40}
                ,{type: 'numbers', title: '序号', align:'center', width:60, sort: true}
                ,{field: 'authName', title: '角色', align:'center', width:200, sort: true}
                ,{field: 'xxgl', title: '信息管理', align:'center', width:120,templet: '#xxglState'}
                ,{field: 'wjgl', title: '文件管理', align:'center', width:120,templet: '#wjglState'}
                ,{field: 'rjxt', title: '软件系统', align:'center', width:120,templet: '#rjxtState'}
                ,{field: 'xtgl', title: '系统管理', align:'center', width:120,templet: '#xtglState'}
                ,{field: 'yhgl', title: '用户管理', align:'center', width:120,templet: '#yhglState'}
                ,{field: 'authUpdateTime', title: '更新时间', align:'center', templet :
                        "<div>{{layui.util.toDateString(d.authUpdateTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>", sort: true}
                ,{fixed: 'right',title: '操作', align:'center', toolbar: '#barDemo', width:250}
            ]]
        });

        //监听头部工具栏事件
        table.on('toolbar(table)',function (obj){
            switch (obj.event){
                //权限-添加
                case 'insert':
                    //清空权限名文本框
                    $('input[name=authName]').val('');
                    //初始化添加模块
                    $('input[type=checkbox]').removeProp('checked');
                    $('div[name$=Div]').css('display','none');
                    form.render();
                    layer.open({
                        type: 1,
                        title:'添加权限组',
                        area: ['600px','80%'],
                        shadeClose: false,
                        content: $('#add_authority'),
                    });
                    break;
            }
        });

        //监听工具栏事件
        table.on('tool(table)',function (obj){
            let data = obj.data;
            switch (obj.event) {
                //权限-编辑
                case 'edit':
                    $('#up_authName').val(data.authName);
                    $('#authId').val(data.authId);
                    if(data.xxgl==1){
                        $('#up_xxgl').prop('checked',true);
                        $('div[name=xxglDiv]').css('display','inline');
                    }else{
                        $('#up_xxgl').prop('checked',false);
                        $('div[name=xxglDiv]').css('display','none');
                    }
                    if(data.csxx==1){$('#up_csxx').prop('checked',true);}else{$('#up_csxx').prop('checked',false);}
                    if(data.zhxx==1){$('#up_zhxx').prop('checked',true);}else{$('#up_zhxx').prop('checked',false);}
                    if(data.itgdzcxx==1){$('#up_itgdzcxx').prop('checked',true);}else{$('#up_itgdzcxx').prop('checked',false);}
                    if(data.txl==1){$('#up_txl').prop('checked',true);}else{$('#up_txl').prop('checked',false);}
                    if(data.ddxx==1){$('#up_ddxx').prop('checked',true);}else{$('#up_ddxx').prop('checked',false);}
                    if(data.khzh==1){$('#up_khzh').prop('checked',true);}else{$('#up_khzh').prop('checked',false);}
                    if(data.atm==1){$('#up_atm').prop('checked',true);}else{$('#up_atm').prop('checked',false);}
                    if(data.work==1){$('#up_work').prop('checked',true);}else{$('#up_work').prop('checked',false);}
                    if(data.wjgl==1){
                        $('#up_wjgl').prop('checked',true);
                        $('div[name=wjglDiv]').css('display','inline');
                    }else{
                        $('#up_wjgl').prop('checked',false);
                        $('div[name=wjglDiv]').css('display','none');
                    }
                    if(data.bdxx==1){$('#up_bdxx').prop('checked',true);}else{$('#up_bdxx').prop('checked',false);}
                    if(data.wj==1){$('#up_skwj').prop('checked',true);}else{$('#up_skwj').prop('checked',false);}
                    if(data.rjxt==1){
                        $('#up_rjxt').prop('checked',true);
                        $('div[name=rjxtDiv]').css('display','inline');
                    }else{
                        $('#up_rjxt').prop('checked',false);
                        $('div[name=rjxtDiv]').css('display','none');
                    }
                    if(data.yyrj==1){$('#up_yyrj').prop('checked',true);}else{$('#up_yyrj').prop('checked',false);}
                    if(data.xtxz==1){$('#up_xtxz').prop('checked',true);}else{$('#up_xtxz').prop('checked',false);}
                    if(data.qdxz==1){$('#up_qdxz').prop('checked',true);}else{$('#up_qdxz').prop('checked',false);}
                    if(data.xtgl==1){
                        $('#up_xtgl').prop('checked',true);
                        $('div[name=xtglDiv]').css('display','inline');
                    }else{
                        $('#up_xtgl').prop('checked',false);
                        $('div[name=xtglDiv]').css('display','none');
                    }
                    if(data.xtrz==1){$('#up_xtrz').prop('checked',true);}else{$('#up_xtrz').prop('checked',false);}
                    if(data.yhgl==1){
                        $('#up_yhgl').prop('checked',true);
                        $('div[name=yhglDiv]').css('display','inline');
                    }else{
                        $('#up_yhgl').prop('checked',false);
                        $('div[name=yhglDiv]').css('display','none');
                    }
                    if(data.qxlb==1){$('#up_qxlb').prop('checked',true);}else{$('#up_qxlb').prop('checked',false);}
                    if(data.bmlb==1){
                        $('#up_bmlb').prop('checked',true);
                        $('#up_bmlbZw').prop('checked',true);
                    }else{
                        $('#up_bmlb').prop('checked',false);
                        $('#up_bmlbZw').prop('checked',false);
                    }
                    if(data.yhlb==1){$('#up_yhlb').prop('checked',true);}else{$('#up_yhlb').prop('checked',false);}
                    if(data.grxx==1){$('#up_grxx').prop('checked',true);}else{$('#up_grxx').prop('checked',false);}
                    if(data.csxxAdd==1){$('#up_csxxAdd').prop('checked',true);}else{$('#up_csxxAdd').prop('checked',false);}
                    if(data.csxxUp==1){$('#up_csxxUp').prop('checked',true);}else{$('#up_csxxUp').prop('checked',false);}
                    if(data.csxxDel==1){$('#up_csxxDel').prop('checked',true);}else{$('#up_csxxDel').prop('checked',false);}
                    if(data.zhxxAdd==1){$('#up_zhxxAdd').prop('checked',true);}else{$('#up_zhxxAdd').prop('checked',false);}
                    if(data.zhxxUp==1){$('#up_zhxxUp').prop('checked',true);}else{$('#up_zhxxUp').prop('checked',false);}
                    if(data.zhxxDel==1){$('#up_zhxxDel').prop('checked',true);}else{$('#up_zhxxDel').prop('checked',false);}
                    if(data.itgdzcxxAdd==1){$('#up_itgdzcxxAdd').prop('checked',true);}else{$('#up_itgdzcxxAdd').prop('checked',false);}
                    if(data.itgdzcxxUp==1){$('#up_itgdzcxxUp').prop('checked',true);}else{$('#up_itgdzcxxUp').prop('checked',false);}
                    if(data.itgdzcxxDel==1){$('#up_itgdzcxxDel').prop('checked',true);}else{$('#up_itgdzcxxDel').prop('checked',false);}
                    if(data.txlAdd==1){$('#up_txlAdd').prop('checked',true);}else{$('#up_txlAdd').prop('checked',false);}
                    if(data.txlUp==1){$('#up_txlUp').prop('checked',true);}else{$('#up_txlUp').prop('checked',false);}
                    if(data.txlDel==1){$('#up_txlDel').prop('checked',true);}else{$('#up_txlDel').prop('checked',false);}
                    if(data.ddxxAdd==1){$('#up_ddxxAdd').prop('checked',true);}else{$('#up_ddxxAdd').prop('checked',false);}
                    if(data.ddxxUp==1){$('#up_ddxxUp').prop('checked',true);}else{$('#up_ddxxUp').prop('checked',false);}
                    if(data.ddxxDel==1){$('#up_ddxxDel').prop('checked',true);}else{$('#up_ddxxDel').prop('checked',false);}
                    if(data.ddxxGl==1){$('#up_ddxxGl').prop('checked',true);}else{$('#up_ddxxGl').prop('checked',false);}
                    if(data.khzhAdd==1){$('#up_khzhAdd').prop('checked',true);}else{$('#up_khzhAdd').prop('checked',false);}
                    if(data.khzhUp==1){$('#up_khzhUp').prop('checked',true);}else{$('#up_khzhUp').prop('checked',false);}
                    if(data.khzhDel==1){$('#up_khzhDel').prop('checked',true);}else{$('#up_khzhDel').prop('checked',false);}
                    if(data.atmAdd==1){$('#up_atmAdd').prop('checked',true);}else{$('#up_atmAdd').prop('checked',false);}
                    if(data.atmGoodsUp==1){$('#up_atmGoodsUp').prop('checked',true);}else{$('#up_atmGoodsUp').prop('checked',false);}
                    if(data.atmDel==1){$('#up_atmDel').prop('checked',true);}else{$('#up_atmDel').prop('checked',false);}
                    if(data.workAdd==1){$('#up_workAdd').prop('checked',true);}else{$('#up_workAdd').prop('checked',false);}
                    if(data.workUp==1){$('#up_workUp').prop('checked',true);}else{$('#up_workUp').prop('checked',false);}
                    if(data.workDel==1){$('#up_workDel').prop('checked',true);}else{$('#up_workDel').prop('checked',false);}
                    if(data.bdxxAdd==1){$('#up_bdxxAdd').prop('checked',true);}else{$('#up_bdxxAdd').prop('checked',false);}
                    if(data.bdxxUp==1){$('#up_bdxxUp').prop('checked',true);}else{$('#up_bdxxUp').prop('checked',false);}
                    if(data.bdxxDel==1){$('#up_bdxxDel').prop('checked',true);}else{$('#up_bdxxDel').prop('checked',false);}
                    if(data.bdxxDl==1){$('#up_bdxxDl').prop('checked',true);}else{$('#up_bdxxDl').prop('checked',false);}
                    if(data.wjAdd==1){$('#up_skwjAdd').prop('checked',true);}else{$('#up_skwjAdd').prop('checked',false);}
                    if(data.wjUp==1){$('#up_skwjUp').prop('checked',true);}else{$('#up_skwjUp').prop('checked',false);}
                    if(data.wjDel==1){$('#up_skwjDel').prop('checked',true);}else{$('#up_skwjDel').prop('checked',false);}
                    if(data.wjDl==1){$('#up_skwjDl').prop('checked',true);}else{$('#up_skwjDl').prop('checked',false);}
                    if(data.yyrjAdd==1){$('#up_yyrjAdd').prop('checked',true);}else{$('#up_yyrjAdd').prop('checked',false);}
                    if(data.yyrjUp==1){$('#up_yyrjUp').prop('checked',true);}else{$('#up_yyrjUp').prop('checked',false);}
                    if(data.yyrjDel==1){$('#up_yyrjDel').prop('checked',true);}else{$('#up_yyrjDel').prop('checked',false);}
                    if(data.xtxzAdd==1){$('#up_xtxzAdd').prop('checked',true);}else{$('#up_xtxzAdd').prop('checked',false);}
                    if(data.xtxzUp==1){$('#up_xtxzUp').prop('checked',true);}else{$('#up_xtxzUp').prop('checked',false);}
                    if(data.xtxzDel==1){$('#up_xtxzDel').prop('checked',true);}else{$('#up_xtxzDel').prop('checked',false);}
                    if(data.qdxzAdd==1){$('#up_qdxzAdd').prop('checked',true);}else{$('#up_qdxzAdd').prop('checked',false);}
                    if(data.qdxzUp==1){$('#up_qdxzUp').prop('checked',true);}else{$('#up_qdxzUp').prop('checked',false);}
                    if(data.qdxzDel==1){$('#up_qdxzDel').prop('checked',true);}else{$('#up_qdxzDel').prop('checked',false);}
                    if(data.qxlbAdd==1){$('#up_qxlbAdd').prop('checked',true);}else{$('#up_qxlbAdd').prop('checked',false);}
                    if(data.qxlbUp==1){$('#up_qxlbUp').prop('checked',true);}else{$('#up_qxlbUp').prop('checked',false);}
                    if(data.qxlbDel==1){$('#up_qxlbDel').prop('checked',true);}else{$('#up_qxlbDel').prop('checked',false);}
                    if(data.bmlbAdd==1){$('#up_bmlbAdd').prop('checked',true);}else{$('#up_bmlbAdd').prop('checked',false);}
                    if(data.bmlbUp==1){$('#up_bmlbUp').prop('checked',true);}else{$('#up_bmlbUp').prop('checked',false);}
                    if(data.bmlbDel==1){$('#up_bmlbDel').prop('checked',true);}else{$('#up_bmlbDel').prop('checked',false);}
                    if(data.zwlbAdd==1){$('#up_bmlbZwAdd').prop('checked',true);}else{$('#up_bmlbZwAdd').prop('checked',false);}
                    if(data.zwlbUp==1){$('#up_bmlbZwUp').prop('checked',true);}else{$('#up_bmlbZwUp').prop('checked',false);}
                    if(data.zwlbDel==1){$('#up_bmlbZwDel').prop('checked',true);}else{$('#up_bmlbZwDel').prop('checked',false);}
                    if(data.yhlbAdd==1){$('#up_yhlbAdd').prop('checked',true);}else{$('#up_yhlbAdd').prop('checked',false);}
                    if(data.yhlbUp==1){$('#up_yhlbUp').prop('checked',true);}else{$('#up_yhlbUp').prop('checked',false);}
                    if(data.yhlbDel==1){$('#up_yhlbDel').prop('checked',true);}else{$('#up_yhlbDel').prop('checked',false);}
                    if(data.yhlbEn==1){$('#up_yhlbEn').prop('checked',true);}else{$('#up_yhlbEn').prop('checked',false);}
                    if(data.grxxPwd==1){$('#up_grxxPwd').prop('checked',true);}else{$('#up_grxxPwd').prop('checked',false);}
                    if(data.grxxInfo==1){$('#up_grxxInfo').prop('checked',true);}else{$('#up_grxxInfo').prop('checked',false);}
                    if(data.yyrjDl==1){$('#up_yyrjDl').prop('checked',true);}else{$('#up_yyrjDl').prop('checked',false);}
                    if(data.xtxzDl==1){$('#up_xtxzDl').prop('checked',true);}else{$('#up_xtxzDl').prop('checked',false);}
                    if(data.qdxzDl==1){$('#up_qdxzDl').prop('checked',true);}else{$('#up_qdxzDl').prop('checked',false);}
                    form.render('checkbox');
                    layer.open({
                        type: 1,
                        title:'更新权限组',
                        area: ['600px','80%'],
                        shadeClose: false,
                        content: $('#up_authority'),
                    });
                    break;
                case 'delete':
                    if(data.authId==1){
                        layer.alert('禁止删除！',{
                            title: '提示框',
                            icon:0,
                        });
                        return false;
                    }
                    layer.confirm('确认要删除吗？',function(){
                        $.ajax({
                            async: false,
                            url: '/auth/delete',
                            type: 'post',
                            data: {'authId':data.authId,'authName':data.authName},
                            dataType: 'text',
                            success: function(data){
                                if(data == 1){
                                    layer.alert('删除成功！',{
                                        title: '提示框',
                                        icon:1,
                                    },function(){
                                        location.reload();
                                    });
                                }else if(data == 2){
                                    layer.alert('已绑定用户,不能删除！',{
                                        title: '提示框',
                                        icon:2,
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

        //第一层Checkbox按钮事件
        form.on('checkbox(firstCheckBox)', function (obj) {
            let className=$(obj.elem).attr('class');
            if($(obj.elem).prop('checked')){
                $('.'+className).prop('checked',true);
                $('div[name='+className+'Div]').css('display','inline');
            }else{
                $('.'+className).removeProp('checked');
                $('div[name='+className+'Div]').css('display','none');
            }
            form.render('checkbox');
        });
        //第二层Checkbox按钮事件
        form.on('checkbox(secondCheckBox)', function (obj) {
            let idName=$(obj.elem).prop('id');
            if($(obj.elem).prop('checked')){
                $('input[id^='+idName+']').prop('checked','checked');
            }else{
                $('input[id^='+idName+']').removeProp('checked','checked');
            }
            form.render('checkbox');
        });
        
        //添加-提交
        form.on('submit(subInsert)',function (){
            $.ajax({
                async: false,
                url: '/auth/insert',
                type: 'post',
                data: $('#FormAdd').serialize(),
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
        
        //修改-提交
        form.on('submit(subUpdate)',function (){
            $.ajax({
                async: false,
                url: '/auth/update',
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