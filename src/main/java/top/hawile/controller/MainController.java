package top.hawile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Role;
import top.hawile.entity.User;
import top.hawile.service.RoleService;
import top.hawile.service.SysInfoService;
import top.hawile.service.UserSignService;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    @Resource
    private HttpSession session;
    @Resource
    private RoleService roleService;
    @Resource
    private SysInfoService sysInfoService;
    @Resource
    private UserSignService userSignService;

    @RequestMapping({"/","/index"})
    public String index(){
        //清空session对象
        session.invalidate();
        return "index";
    }

    @RequestMapping("/home")
    public String home(Model model){
        //将user对象存入model
        model.addAttribute("user", session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        return "home";
    }

    @RequestMapping("/welcome")
    public String welcome(Model model){
        //将系统所需信息传入model
        model.addAttribute("visits",sysInfoService.selectByName("visits").getValue());
        //将用户申请数量传入model
        model.addAttribute("userSignCount",userSignService.count());
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        return "page/welcome";
    }

    @ResponseBody
    @RequestMapping("/menu")
    public Map<String,Object> menu(){
        //默认菜单
        Map<String,Object> mapTop = new HashMap<>();
        //第1层菜单
        List<Map<String,Object>> list0 = new ArrayList<>();

        //获取当前用户对象
        User user = (User) session.getAttribute("user");
        //获取第1层菜单内容
        List<Role> roleList0 = roleService.menuByUser0(user.getId());
        for (Role role:roleList0){
            //获取第2层菜单内容
            List<Role> roleList1 = roleService.menuByUser1(user.getId(),role.getId());
            //第2层菜单
            List<Map<String,Object>> list1 = new ArrayList<>();
            for (Role role1:roleList1){
                //第2层菜单内容
                Map<String,Object> map1 = new HashMap<>();
                map1.put("title",role1.getName());
                map1.put("icon",role1.getIcon());
                map1.put("href",role1.getHref());
                map1.put("target","_self");
                list1.add(map1);
            }
            //第1层菜单内容
            Map<String,Object> map0 = new HashMap<>();
            map0.put("title",role.getName());
            map0.put("icon",role.getIcon());
            map0.put("href",role.getHref());
            map0.put("target","_self");
            map0.put("child",list1);
            list0.add(map0);
        }

        Map<String,Object> map01 = new HashMap<>();
        map01.put("title","常规管理");
        map01.put("icon","fa fa-address-book");
        map01.put("href","");
        map01.put("target","_self");
        map01.put("child",list0);
        //默认菜单内容
        List<Map<String,Object>> list = new ArrayList<>();
        list.add(map01);

        //默认菜单内容
        Map<String,Object> map001 = new HashMap<>();
        map001.put("title","首页");
        map001.put("href","welcome");
        mapTop.put("homeInfo",map001);
        //默认菜单内容
        Map<String,Object> map002 = new HashMap<>();
        map002.put("title","");
        map002.put("image","image/keydom.png");
        map002.put("href","");
        mapTop.put("logoInfo",map002);
        //默认菜单内容
        mapTop.put("menuInfo",list);
        return mapTop;
    }
}
