$(function() {

    //重新渲染表格
    layui.use(['laydate','table'],function(){
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
            ,url: '/log/list' //数据接口
            ,page: true
            ,limits: [10,20,30,50,100,200,500]
            ,limit: 10
            ,toolbar: false
            ,cols: [[ //表头
               {type: 'numbers', title: '序号', align:'center', width:60, sort: true}
                ,{field: 'userName', title: '用户', align:'center', width:150, sort: true}
                ,{field: 'name', title: '姓名', align:'center', width:150, sort: true}
                ,{field: 'content', title: '操作内容', align:'center', minWidth:200, sort: true}
                ,{field: 'state', title: '操作状态', align:'center', width:120,templet:'#state', sort: true}
                ,{field: 'createTime', title: '操作时间', align:'center', width:200,templet :
                        "<div>{{layui.util.toDateString(d.createTime, 'yyyy年MM月dd日 HH:mm:ss')}}</div>"
                        , width:200, sort: true}
            ]]
        });
        layui.form.render();
    });
});

//查看日志
function monthQuery(){
    let month=$('input[name="month"]').val();
    window.location='/log?month='+month;
}