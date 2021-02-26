package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.LogLogin;
import top.hawile.entity.User;
import top.hawile.service.AuthService;
import top.hawile.service.DeptService;
import top.hawile.service.LogService;
import top.hawile.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author Hawile
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;
    @Resource
    private DeptService deptService;
    @Resource
    private AuthService authService;
    @Resource
    private LogService logService;

    @RequestMapping()
    //设置用户列表界面所需内容
    public String userList(Model model, HttpSession session) {
        //将登录用户信息传入model
        model.addAttribute("user",session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        //将部门列表传入model
        model.addAttribute("deptList",deptService.list());
        //将权限列表传入model
        model.addAttribute("authList",authService.list());
        //将操作写入日志
        logService.log("查看[ 用户列表 ]","成功");
        return "page/user";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取用户列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取表格列表
        List<User> list = userService.list();
        //根据分页格式分页表格列表
        PageInfo<User> rolePageInfo = new PageInfo<>(list);
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //设置Json格式
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",rolePageInfo.getTotal());
        map.put("data",rolePageInfo.getList());
        return map;
    }

    @RequestMapping("/apply")
    //用户注册界面所需内容
    public String sign(Model model){
        //将部门列表传入model
        model.addAttribute("deptList",deptService.list());
        return "page/user_apply";
    }


    @RequestMapping("/user_info")
    //设置个人信息列表所需内容
    public String userInfo(Model model, HttpSession session) {
        //将登录用户信息传入model
        model.addAttribute("user",session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        //将部门列表传入model
        model.addAttribute("deptList",deptService.list());
        //将操作写入日志
        logService.log("查看[ 个人信息 ]","成功");
        return "page/user_info";
    }

    @ResponseBody
    @RequestMapping("/login_log")
    //获取用户登录日志列表
    public Map<String,Object> loginLog(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取表格列表
        List<LogLogin> list = logService.loginList();
        //根据分页格式分页表格列表
        PageInfo<LogLogin> rolePageInfo = new PageInfo<>(list);
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //设置Json格式
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",rolePageInfo.getTotal());
        map.put("data",rolePageInfo.getList());
        return map;
    }

    @RequestMapping("/findById")
    //根据id查询用户信息
    public User findById(Integer id){
        return userService.findById(id);
    }

    //添加用户操作
    @ResponseBody
    @RequestMapping("/insert")
    public int insert(User user) {
            //执行添加到数据库操作
            int state = userService.insert(user);
            if(state == 1){
                //将操作写入系统日志
                logService.log("添加[ "+user.getUserName()+" ]用户","成功");
                return 1;
            }else if(state == 2){
                //将操作写入系统日志
                logService.log("添加[ "+user.getUserName()+" ]用户","失败");
                return 2;
            }
            //将操作写入系统日志
            logService.log("添加[ "+user.getUserName()+" ]用户","失败");
            return 0;
    }

    //更新用户操作
    @ResponseBody
    @RequestMapping("/update")
    public int update(User user) {
        //执行更新到数据库操作
        int state = userService.update(user);
        if(state == 1){
            //将操作写入系统日志
            logService.log("修改[ "+user.getUserName()+" ]用户","成功");
            return 1;
        }
        //将操作写入系统日志
        logService.log("修改[ "+user.getUserName()+" ]用户","失败");
        return 0;
    }

    //删除用户操作
    @ResponseBody
    @RequestMapping("/delete")
    public int delete(Integer id,String userName) {
        //执行删除到数据库操作
        int state = userService.delete(id);
        if(state == 1){
            //将操作写入系统日志
            logService.log("删除[ "+userName+" ]用户","成功");
            return 1;
        }
        //将操作写入系统日志
        logService.log("删除[ "+userName+" ]用户","失败");
        return 0;
    }

    //用户停启用操作
    @ResponseBody
    @RequestMapping("/enabled")
    public int enabled(Integer id, Integer enabled, String userName) {
        //更新状态
        int state = userService.updateEnabled(id,enabled);
        //如果启用成功
        if(state == 1){
            //将操作写入系统日志
            logService.log("启用[ "+userName+" ]用户","成功");
            return 1;
        }
        //如果停用成功
        if(state == 2){
            //将操作写入系统日志
            logService.log("停用[ "+userName+" ]用户","成功");
            return 2;
        }
        //将操作写入系统日志
        logService.log("停启用[ "+userName+" ]用户","失败");
        return 0;
    }

    //修改密码操作
    @ResponseBody
    @RequestMapping("/change_pwd")
    public Map<String,Object> changePwd(String oldPwd, String newPwd, String userName) {
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //执行修改密码到数据库操作
        int state = userService.changePwd(oldPwd,newPwd,userName);
        //判断是否修改失败
        if(state == 1){
            //将操作写入系统日志
            logService.log("修改[ "+userName+" ]用户密码","成功");
            map.put("state",1);
            map.put("userName",userName);
            map.put("password",newPwd);
        }else{
            //将操作写入系统日志
            logService.log("修改[ "+userName+" ]用户密码","失败");
            map.put("state",2);
        }
        return map;
    }

    @ResponseBody
    @RequestMapping("/user_count")
    //获取特定用户名数量
    public int userCount(String userName){
        return userService.userCount(userName);
    }
}
