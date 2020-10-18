package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Authority;
import top.hawile.service.AuthService;
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
@RequestMapping("/auth")
public class AuthController {
    @Resource
    private AuthService authService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置权限列表所需信息
    public String authority(HttpServletRequest request, HttpSession session){
        //将登录用户信息传入request
        request.setAttribute("user",session.getAttribute("user"));
        //将权限列表传入request
        request.setAttribute("authList",authService.list());
        //将操作写入日志
        logService.log("查看[ 权限列表 ]","成功");
        return "page/authority";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取权限列表信息
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取表格列表
        List<Authority> list = authService.list();
        //根据分页格式分页表格列表
        PageInfo<Authority> rolePageInfo = new PageInfo<>(list);
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
    @PostMapping("/insert")
    //添加权限组
    public int insert(Authority authority){
        //封装当前系统时间到对象
        authority.setAuthUpdateTime(new Timestamp(new Date().getTime()));
        //添加权限组到数据库操作
        int state = authService.insert(authority);
        //判断是否添加成功
        if(state == 1){
            //将操作写入系统日志
            logService.log("添加[ "+authority.getAuthName()+" ]权限组","成功");
            return 1;
        }
        //将操作写入系统日志
        logService.log("添加[ "+authority.getAuthName()+" ]权限组","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/update")
    //更新权限组
    public int update(Authority authority){
        //封装当前系统时间到对象
        authority.setAuthUpdateTime(new Timestamp(new Date().getTime()));
        //更新权限组到数据库操作
        int state = authService.update(authority);
        //判断是否修改成功
        if(state == 1){
            //将操作写入系统日志
            logService.log("更新[ "+authority.getAuthName()+" ]权限组","成功");
            return 1;
        }
        //将操作写入系统日志
        logService.log("更新[ "+authority.getAuthName()+" ]权限组","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/delete")
    //删除权限组
    public int delete(Integer authId, String authName){
        //删除权限组到数据库操作
        int state = authService.delete(authId);
        //判断是否删除成功
        if(state == 1){
            //将操作写入系统日志
            logService.log("删除[ "+authName+" ]权限组","成功");
            return 1;
        }else if(state == 2){   //判断该权限组是否有用户绑定
            //将操作写入系统日志
            logService.log("删除[ "+authName+" ]权限组","失败");
            return 2;
        }
        //将操作写入系统日志
        logService.log("删除[ "+authName+" ]权限组","失败");
        return 0;
    }
}
