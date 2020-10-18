package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.AccNum;
import top.hawile.service.AccNumService;
import top.hawile.service.LogService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/acc_num")
public class AccNumController {

    @Resource
    private AccNumService accNumService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置账号信息列表所需内容
    public String accNum(HttpServletRequest request, HttpSession session){
        //将登录用户信息传入request
        request.setAttribute("user",session.getAttribute("user"));
        //将操作写入日志
        logService.log("查看[ 账号信息列表 ]","成功");
        return "page/acc_num";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取账号信息列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取账号信息列表
        List<AccNum> list = accNumService.list();
        //根据分页格式分页表格列表
        PageInfo<AccNum> rolePageInfo = new PageInfo<>(list);
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //设置Json格式
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",rolePageInfo.getTotal());
        map.put("data",rolePageInfo.getList());
        return map;
    }

    @ResponseBody
    @PostMapping("/insert")
    public int insert(AccNum accNum){
        //封装当前系统时间到对象
        accNum.setUpdateTime(new Timestamp(new Date().getTime()));
        //执行添加账号信息到数据库操作
        int state = accNumService.insert(accNum);
        //判断是否添加成功
        if (state == 1){
            logService.log("添加[ "+accNum.getName()+" ]账号信息","成功");
            return 1;
        }
        logService.log("添加[ "+accNum.getName()+" ]账号信息","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/update")
    public int update(AccNum accNum){
        //封装当前系统时间到对象
        accNum.setUpdateTime(new Timestamp(new Date().getTime()));
        //执行修改账号信息到数据库操作
        int state = accNumService.update(accNum);
        //判断是否修改成功
        if (state == 1){
            logService.log("修改[ "+accNum.getName()+" ]账号信息","成功");
            return 1;
        }
        logService.log("修改[ "+accNum.getName()+" ]账号信息","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/delete")
    public int delete(Integer id, String name){
        //执行修改账号信息到数据库操作
        int state = accNumService.delete(id);
        //判断是否删除成功
        if (state == 1){
            logService.log("删除[ "+name+" ]账号信息","成功");
            return 1;
        }
        logService.log("删除[ "+name+" ]账号信息","失败");
        return 0;
    }

    @ResponseBody
    @GetMapping("/export_excel")
    public void exportExcel(String exportId) throws Exception {
        //执行导出Excel操作
        accNumService.exportExcel(exportId);
        logService.log("导出账号信息列表","成功");
    }
}
