package top.hawile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.SysInfo;
import top.hawile.entity.UserSign;
import top.hawile.service.SysInfoService;
import top.hawile.service.UserService;
import top.hawile.service.UserSignService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {
    @Resource
    private HttpSession session;
    @Resource
    private HttpServletRequest request;
    @Resource
    private SysInfoService sysInfoService;
    @Resource
    private UserService userService;
    @Resource
    private UserSignService userSignService;

    @RequestMapping({"/","/index"})
    public String index(){
        //清空session对象
        session.invalidate();
        return "index";
    }

    @RequestMapping("/home")
    public String home(){
        //将user对象存入request
        request.setAttribute("user", session.getAttribute("user"));
        return "home";
    }

    @RequestMapping("/welcome")
    public String welcome(Model model){
        model.addAttribute("visits",sysInfoService.selectByName("visits").getValue());
        model.addAttribute("userSignCount",userSignService.count());
        return "/page/welcome";
    }

    @ResponseBody
    @RequestMapping("/login")
    public Map<String,Object> login(String userName, String password) {
        Map<String,Object> map = new HashMap<>();
        map.put("state",userService.login(userName, password));
        map.put("userName",userName);
        return map;
    }
}
