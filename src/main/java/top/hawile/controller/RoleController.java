package top.hawile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Role;
import top.hawile.entity.RoleToUser;
import top.hawile.service.LogService;
import top.hawile.service.RoleService;
import top.hawile.service.RoleToUserService;
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
    private RoleToUserService roleToUserService;
    @Resource
    private UserService userService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置权限列表所需信息
    public String authority(Model model, HttpSession session){
        //将登录用户信息传入model
        model.addAttribute("user",session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        //将权限菜单列表传入model
        model.addAttribute("menuList",roleService.selectMenu());
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
        //获取权限列表
        List<Role> roleList = roleService.list();
        //循环遍历权限列表
        for (Role role:roleList){
            //获取当前权限的用户列表
            List<RoleToUser> roleToUserList = roleToUserService.listByRoleId(role.getId());
            //获取当前权限的第一个用户的用户名
            String userName = userService.findById(roleToUserList.get(0).getUserId()).getUserName();
            //将当前权限的第一个用户的用户名赋值给权限列表
            role.setUsers("["+userName+"]");
            for (int i = 1; i < roleToUserList.size(); i++) {
                userName = userService.findById(roleToUserList.get(i).getUserId()).getUserName();
                role.setUsers(role.getUsers()+",["+userName+"]");
            }
        }
        //设置Json格式
        map.put("code", 0);
        map.put("msg", "");
        map.put("count", roleService.list().size());
        map.put("data",roleList);
        return map;
    }

    @ResponseBody
    @RequestMapping("/insert")
    //添加权限
    public int insert(Role role){
        //执行添加到数据库操作
        int state = roleService.insert(role);
        //判断是否添加成功
        if (state == 1){
            //将操作写入日志
            logService.log("添加[ "+role.getName()+" ]权限","成功");
        } else {
            //将操作写入日志
            logService.log("添加[ "+role.getName()+" ]权限","失败");
        }
        return state;
    }

    @ResponseBody
    @RequestMapping("/update")
    //修改权限
    public int update(Role role){
        //执行修改到数据库操作
        int state = roleService.update(role);
        //判断是否修改成功
        if (state == 1){

            //将操作写入日志
            logService.log("修改[ "+role.getName()+" ]权限","成功");
        } else {
            //将操作写入日志
            logService.log("修改[ "+role.getName()+" ]权限","失败");
        }
        return state;
    }

    @ResponseBody
    @RequestMapping("/delete")
    //删除权限
    public int delete(String name, Integer id){
        //执行删除到数据库操作
        int state = roleService.delete(id);
        //判断是否删除成功
        if (state == 1){
            //将操作写入日志
            logService.log("删除[ "+name+" ]权限","成功");
        } else {
            //将操作写入日志
            logService.log("删除[ "+name+" ]权限","失败");
        }
        return state;
    }
}
