package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Job;
import top.hawile.service.DeptService;
import top.hawile.service.JobService;
import top.hawile.service.LogService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
@RequestMapping("/job")
public class JobController {

    //获取当前系统时间
    Date date = new Date();

    @Resource
    private JobService jobService;
    @Resource
    private DeptService deptService;
    @Resource
    private LogService logService;

    @RequestMapping()
    //设置职务列表所需内容
    public String job(HttpServletRequest request, HttpSession session) {
        //将登录用户信息传入request
        request.setAttribute("user",session.getAttribute("user"));
        //将部门列表传入request
        request.setAttribute("deptList",deptService.list());
        //将操作写入日志
        logService.log("查看[ 职位列表 ]","成功");
        return "job";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取职务列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取账号信息列表
        List<Job> list = jobService.list();
        //根据分页格式分页表格列表
        PageInfo<Job> rolePageInfo = new PageInfo<>(list);
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
    @PostMapping("/findByDeptId")
    //获取特定部门职位列表
    public List<Job> findByDeptId(Integer deptId){ return jobService.selectDeptId(deptId); }

    @ResponseBody
    @PostMapping("/insert")
    public int insert(Job job) {
        //封装当前系统时间到Job对象
        job.setUpdateTime(new Timestamp(date.getTime()));
        //执行添加到数据库操作
        int state = jobService.insert(job);
        //判断是否添加成功
        if(state == 1){
            //写入操作到日志
            logService.log("添加[ "+job.getJobName()+" ]职位信息","成功");
            return 1;
        }
        //写入操作到日志
        logService.log("添加[ "+job.getJobName()+" ]职位信息","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/update")
    public int update(Job job) {
        //封装当前系统时间到Job对象
        job.setUpdateTime(new Timestamp(date.getTime()));
        //执行更新到数据库操作
        int state = jobService.update(job);
        //判断是否修改成功
        if(state == 1){
            //写入操作到日志
            logService.log("更新[ "+job.getJobName()+" ]职位信息","成功");
            return 1;
        }
        //写入操作到日志
        logService.log("更新[ "+job.getJobName()+" ]职位信息","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/delete")
    public int delete(Integer jobId, String jobName) {
        //执行删除到数据库操作
        int state = jobService.delete(jobId);
        //判断是否删除成功
        if(state == 1){
            //写入操作到日志
            logService.log("删除[ "+jobName+" ]职位信息","成功");
            return 1;
        }else if(state == 2){
            //写入操作到日志
            logService.log("删除[ "+jobName+" ]职位信息","失败");
            return 2;
        }
        //写入操作到日志
        logService.log("删除[ "+jobName+" ]职位信息","失败");
        return 0;
    }
}
