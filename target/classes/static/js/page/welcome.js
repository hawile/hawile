layui.use(['layer', 'miniTab','echarts'], function () {
    let $ = layui.jquery,
        miniTab = layui.miniTab,
        echarts = layui.echarts;

    miniTab.listen();
    // echarts 窗口缩放自适应
    window.onresize = function(){
        echarts.resize();
    }
});