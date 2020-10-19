package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Log;
import top.hawile.service.LogService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/log")
public class LogController {

    @Resource
    private LogService logService;

    @RequestMapping()
    //获取日志列表
    public String log(Model model, HttpSession session) {
        //将当前用户对象传入model
        model.addAttribute("user",session.getAttribute("user"));
        return "page/log";
    }

    @ResponseBody
    @RequestMapping("list")
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取表格列表
        List<Log> list = logService.systemList();
        //根据分页格式分页表格列表
        PageInfo<Log> rolePageInfo = new PageInfo<>(list);
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //设置Json格式
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",rolePageInfo.getTotal());
        map.put("data",rolePageInfo.getList());
        return map;
    }

    @RequestMapping("/month")
    //获取特定月份日志列表
    public String log(String month, Model model) {
        //将系统日志列表传入model
        model.addAttribute("syslogList", logService.logMonth(month));
        return "page/log";
    }
}
