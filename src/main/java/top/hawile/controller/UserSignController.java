package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.UserSign;
import top.hawile.service.AuthService;
import top.hawile.service.DeptService;
import top.hawile.service.LogService;
import top.hawile.service.UserSignService;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user_sign")
public class UserSignController {

    @Resource
    private UserSignService userSignService;
    @Resource
    private DeptService deptService;
    @Resource
    private AuthService authService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置申请列表所需内容
    public String userApply(HttpServletRequest request, HttpSession session){
        //将登录用户信息传入request
        request.setAttribute("user",session.getAttribute("user"));
        //将部门列表传入request
        request.setAttribute("deptList",deptService.list());
        //将权限列表传入request
        request.setAttribute("authList",authService.list());
        //将操作写入日志
        logService.log("查看[ 申请列表 ]","成功");
        return "page/user_sign";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取申请列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取表格列表
        List<UserSign> list = userSignService.list();
        //根据分页格式分页表格列表
        PageInfo<UserSign> rolePageInfo = new PageInfo<>(list);
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
    @RequestMapping("/apply")
    //申请提交
    public int sign(UserSign userSign){
        //添加当前系统时间到对象
        userSign.setCreateTime(new Timestamp(new Date().getTime()));
        //添加对象到数据库操作
        int state = userSignService.insert(userSign);
        //判断是否添加成功
        if (state == 1){
            System.out.println("用户申请填写成功!");
        }else {
            System.out.println("用户申请填写失败!");
        }
        return state;
    }

    @ResponseBody
    @RequestMapping("/permit")
    //同意申请
    public int permit(UserSign userSign){
        //设置状态为1
        userSign.setState(1);
        //更新对象到数据库操作
        int state = userSignService.update(userSign);
        //判断是否修改成功
        if (state == 1){
            //复制密码到用户列表
            userSignService.copyPassword(userSign.getUserName());
            logService.log("同意[ "+userSign.getUserName()+" ]用户申请","成功");
        }else{
            logService.log("同意[ "+userSign.getUserName()+" ]用户申请","失败");
        }
        return state;
    }

    @ResponseBody
    @RequestMapping("/deny")
    //拒绝申请
    public int deny(UserSign userSign){
        //设置状态为1
        userSign.setState(2);
        //更新对象到数据库操作
        int state = userSignService.update(userSign);
        //判断是否修改成功
        if (state == 1){
            logService.log("拒绝[ "+userSign.getUserName()+" ]用户申请","成功");
        }else {
            logService.log("拒绝[ "+userSign.getUserName()+" ]用户申请","失败");
        }
        return state;
    }

    @ResponseBody
    @RequestMapping("/delete")
    //删除申请
    public int delete(Integer id, String userName){
        //删除对象到数据库操作
        int state = userSignService.delete(id);
        //判断是否删除成功
        if (state == 1){
            logService.log("删除[ "+userName+" ]用户申请","成功");
        }else {
            logService.log("删除[ "+userName+" ]用户申请","失败");
        }
        return state;
    }
}
