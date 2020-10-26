package top.hawile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Role;
import top.hawile.entity.User;
import top.hawile.service.RoleService;
import top.hawile.service.SysInfoService;
import top.hawile.service.UserService;
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
    private UserService userService;
    @Resource
    private SysInfoService sysInfoService;
    @Resource
    private UserSignService userSignService;

    @RequestMapping({"/","/index"})
    //设置首页所需内容
    public String index(){
        //清空session对象
        session.invalidate();
        return "index";
    }

    @RequestMapping("/home")
    //设置主页所需内容
    public String home(Model model){
        //将user对象存入model
        model.addAttribute("user", session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        return "home";
    }

    @RequestMapping("/welcome")
    //设置欢迎页面所需内容
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
    @RequestMapping("/login")
    //设置登录操作返回数据
    public Map<String,Object> login(String userName, String password) {
        Map<String,Object> map = new HashMap<>();
        map.put("state",userService.login(userName, password));
        map.put("userName",userName);
        return map;
    }

    @ResponseBody
    @RequestMapping("/menu")
    //设置主页左侧菜单内容
    public Map<String,Object> menu(){
        //默认菜单数据
        Map<String,Object> mapTop = new HashMap<>();
        //获取当前用户对象
        User user = (User) session.getAttribute("user");
        //第1层菜单
        List<Map<String,Object>> list1 = new ArrayList<>();
        //获取第1层菜单内容
        List<Role> roleList1 = roleService.menuByUser0(user.getId());
        //遍历循环第一层菜单
        for (Role role1:roleList1){
            //第二层菜单
            List<Map<String,Object>> list2 = new ArrayList<>();
            //获取第二层菜单内容
            List<Role> roleList2 = roleService.menuByUser1(user.getId(),role1.getId());
            //遍历循环第二层菜单
            for (Role role2:roleList2){
                //第2层菜单内容
                Map<String,Object> map2 = new HashMap<>();
                map2.put("title",role2.getName());
                map2.put("icon",role2.getIcon());
                map2.put("href",role2.getHref());
                map2.put("target","_self");
                list2.add(map2);
            }
            //第1层菜单内容
            Map<String,Object> map1 = new HashMap<>();
            map1.put("title",role1.getName());
            map1.put("icon",role1.getIcon());
            map1.put("href",role1.getHref());
            map1.put("target","_self");
            map1.put("child",list2);
            list1.add(map1);
        }
        //默认菜单内容
        List<Map<String,Object>> list0 = new ArrayList<>();
        Map<String,Object> map0 = new HashMap<>();
        map0.put("title","常规管理");
        map0.put("icon","fa fa-address-book");
        map0.put("href","");
        map0.put("target","_self");
        map0.put("child",list1);
        list0.add(map0);

        //默认菜单内容
        Map<String,Object> map001 = new HashMap<>();
        map001.put("title","首页");
        map001.put("href","welcome");
        mapTop.put("homeInfo",map001);
        //默认菜单内容
        Map<String,Object> map002 = new HashMap<>();
        map002.put("title","");
        map002.put("image","image/title.png");
        map002.put("href","");
        mapTop.put("logoInfo",map002);
        //默认菜单内容
        mapTop.put("menuInfo",list0);
        return mapTop;
    }
}
