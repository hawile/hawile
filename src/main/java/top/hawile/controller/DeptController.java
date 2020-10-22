package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Department;
import top.hawile.service.DeptService;
import top.hawile.service.LogService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author Hawile
 */
@Controller
@RequestMapping("/dept")
public class DeptController {

    @Resource
    private DeptService deptService;
    @Resource
    private LogService logService;

    @RequestMapping()
    //设置部门列表所需内容
    public String dept(Model model, HttpSession session) {
        //将登录用户信息传入model
        model.addAttribute("user",session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        //将操作写入日志
        logService.log("查看[ 部门列表 ]","成功");
        return "page/department";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取部门列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取账号信息列表
        List<Department> list = deptService.list();
        //根据分页格式分页表格列表
        PageInfo<Department> rolePageInfo = new PageInfo<>(list);
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
    //添加部门
    public int insert(Department dept) {
        //执行添加到数据库操作
        int state = deptService.insert(dept);
        //判断是否添加成功
        if(state == 1){
            //写入操作到日志
            logService.log("添加[ "+dept.getDeptName()+" ]部门信息","成功");
            return 1;
        }
        //写入操作到日志
        logService.log("添加[ "+dept.getDeptName()+" ]部门信息","失败");
        return 0;
    }

    @ResponseBody
    @RequestMapping("/update")
    //更新部门
    public int update(Department dept) {
        //执行更新到数据库操作
        int state = deptService.update(dept);
        //判断是否修改成功
        if(state == 1){
            //写入操作到日志
            logService.log("修改[ "+dept.getDeptName()+" ]部门信息","成功");
            return 1;
        }
        //写入操作到日志
        logService.log("修改[ "+dept.getDeptName()+" ]部门信息","失败");
        return 0;
    }

    @ResponseBody
    @RequestMapping("/delete")
    //删除部门
    public int delete(Integer deptId, String deptName) {
        //执行删除到数据库操作
        int state = deptService.delete(deptId);
        //判断是否删除成功
        if(state == 1){
            //写入操作到日志
            logService.log("删除[ "+deptName+" ]部门信息","成功");
            return 1;
        }else if(state == 2){   //判断该部门是否有职务绑定
            //写入操作到日志
            logService.log("删除[ "+deptName+" ]部门信息","失败");
            return 2;
        }
        //写入操作到日志
        logService.log("删除[ "+deptName+" ]部门信息","失败");
        return 0;
    }
}
