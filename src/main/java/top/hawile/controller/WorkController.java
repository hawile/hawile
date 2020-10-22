package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Work;
import top.hawile.service.LogService;
import top.hawile.service.WorkService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author Hawile
 */
@Controller
@RequestMapping("/work")
public class WorkController {

    @Resource
    private WorkService workService;
    @Resource
    private LogService logService;
    //获取当前系统时间
    Date date = new Date();

    @RequestMapping()
    //设置工作报表列表所需内容
    public String work(Model model, HttpSession session) {
        //将登录用户信息传入model
        model.addAttribute("user",session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        //将操作写入日志
        logService.log("查看[ 工作报表 ]","成功");
        return "page/work";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取工作报表列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取账号信息列表
        List<Work> list = workService.list();
        //根据分页格式分页表格列表
        PageInfo<Work> rolePageInfo = new PageInfo<>(list);
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
    @RequestMapping("/insert")
    //添加工作报表
    public int insert(Work work) {
        //封装当前系统时间到work对象
        work.setUpdateTime(new Timestamp(date.getTime()));
        //执行增加到数据库操作
        int state = workService.insert(work);
        //判断是否添加成功
        if(state == 1){
            logService.log("添加[ "+work.getName()+" ]的工作内容","成功");
            return 1;
        }else{
            logService.log("添加[ "+work.getName()+" ]的工作内容","失败");
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping("/update")
    public int update(Work work) {
        //封装当前系统时间到work对象
        work.setUpdateTime(new Timestamp(date.getTime()));
        //执行更新到数据库操作
        int state = workService.update(work);
        //判断是否修改成功
        if(state == 1){
            logService.log("更新[ "+work.getName()+" ]的工作内容","成功");
            return 1;
        }else {
            logService.log("更新[ "+work.getName()+" ]的工作内容","失败");
        }
        return 0;
    }

    @ResponseBody
    @RequestMapping("/delete")
    public int delete(Integer id,String name) {
        //执行增加到数据库操作
        int state = workService.delete(id);
        //判断是否删除成功
        if(state ==1 ){
            logService.log("删除[ "+name+" ]ID为[ "+id+" ]的工作内容","成功");
            return 1;
        }else {
            logService.log("删除[ "+name+" ]ID为[ "+id+" ]的工作内容","失败");
        }
        return 0;
    }

    @ResponseBody
    @GetMapping("/export")
    public void export(String beginDate, String endDate) {
        //设置excel模板文件路径
        String filePath = System.getProperty("user.dir")+"/Excel/workTemplate.xlsx";
        //执行导出工作报表为Excel操作
        workService.exportExcel(beginDate,endDate,filePath);
    }
}
