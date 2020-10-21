package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Role;
import top.hawile.service.LogService;
import top.hawile.service.RoleService;
import top.hawile.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/role")
public class RoleController {

    @Resource
    private RoleService roleService;
    @Resource
    private UserService userService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置权限列表所需信息
    public String authority(Model model, HttpSession session){
        //将登录用户信息传入model
        model.addAttribute("user",session.getAttribute("user"));
        //将用户列表传入model
        model.addAttribute("userList",userService.list());
        //将操作写入日志
        logService.log("查看[ 权限列表 ]","成功");
        return "page/role";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取权限列表信息
    public Map<String,Object> list(){
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //设置Json格式
        map.put("code", 0);
        map.put("msg", "");
        map.put("count", roleService.list().size());
        map.put("data",roleService.list());
        return map;
    }
}
