package top.hawile.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import top.hawile.entity.SysInfo;
import top.hawile.entity.User;
import top.hawile.service.SysInfoService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Hawile
 */
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        //获取Action
        String action = request.getServletPath();
        //判断是否为首页登录请求
        if("/index".equals(action)){
            //清空session
            session.invalidate();
            return true;
        } else if(session.getAttribute("user") != null){    //判断session中是否存在登录的对象
            //获取session中user对象
            User user = (User) session.getAttribute("user");

            //判断是否有查看厂商信息权限
            if(user.getCsxx() != 1 && "/contact".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加厂商信息权限
            if(user.getCsxxAdd() != 1 && "/contact/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改厂商信息权限
            if(user.getCsxxUp() != 1 && "/contact/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除厂商信息权限
            if(user.getCsxxDel() != 1 && "/contact/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看账号信息权限
            if(user.getZhxx() != 1 && "/acc_num".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加账号信息权限
            if(user.getZhxxAdd() != 1 && "/acc_num/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改账号信息权限
            if(user.getZhxxUp() != 1 && "/acc_num/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除账号信息权限
            if(user.getZhxxDel() != 1 && "/acc_num/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看客户账号权限
            if(user.getKhzh() != 1 && "/csr".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加客户账号权限
            if(user.getKhzhAdd() != 1 && "/csr/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改客户账号权限
            if(user.getKhzhUp() != 1 && "/csr/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除客户账号权限
            if(user.getKhzhDel() != 1 && "/csr/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看售货机订单信息权限
            if(user.getAtm() != 1 && "/atm".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加售货机订单信息权限
            if(user.getAtmAdd() != 1 && "/atm/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除售货机订单信息权限
            if(user.getAtmDel() != 1 && "/atm/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看工作报表权限
            if(user.getWork() != 1 && "/work".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加工作报表权限
            if(user.getWorkAdd() != 1 && "/work/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改工作报表权限
            if(user.getWorkUp() != 1 && "/work/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除工作报表权限
            if(user.getWorkDel() != 1 && "/work/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看文件权限
            if(user.getWj() != 1 && "/file".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加文件权限
            if(user.getWjAdd() != 1 && "/file/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改文件权限
            if(user.getWjUp() != 1 && "/file/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除文件权限
            if(user.getWjDel() != 1 && "/file/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载文件权限
            if(user.getWjDl() != 1 && "/file/download".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看表单权限
            if(user.getBdxx() != 1 && "/form".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加表单权限
            if(user.getBdxxAdd() != 1 && "/form/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改表单权限
            if(user.getBdxxUp() != 1 && "/form/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除表单权限
            if(user.getBdxxDel() != 1 && "/form/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载表单权限
            if(user.getBdxxDl() != 1 && "/form/download".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看应用软件权限
            if(user.getYyrj() != 1 && "/soft_app".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加应用软件权限
            if(user.getYyrjAdd() != 1 && "/soft_app/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改应用软件权限
            if(user.getYyrjUp() != 1 && "/soft_app/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除应用软件权限
            if(user.getYyrjDel() != 1 && "/soft_app/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载应用软件权限
            if(user.getYyrjDl() != 1 && "/soft_app/download".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看驱动软件权限
            if(user.getQdxz() != 1 && "/soft_drive".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加驱动软件权限
            if(user.getQdxzAdd() != 1 && "/soft_drive/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改驱动软件权限
            if(user.getQdxzUp() != 1 && "/soft_drive/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除驱动软件权限
            if(user.getQdxzDel() != 1 && "/soft_drive/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载驱动软件权限
            if(user.getQdxzDl() != 1 && "/soft_drive/download".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看系统软件权限
            if(user.getXtxz() != 1 && "/soft_os".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加系统软件权限
            if(user.getXtxzAdd() != 1 && "/soft_os/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改系统软件权限
            if(user.getXtxzUp() != 1 && "/soft_os/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除系统软件权限
            if(user.getXtxzDel() != 1 && "/soft_os/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载系统软件权限
            if(user.getXtxzDl() != 1 && "/soft_os/download".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看权限信息权限
            if(user.getQxlb() != 1 && "/auth".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加权限信息权限
            if(user.getQxlbAdd() != 1 && "/auth/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改权限信息权限
            if(user.getQxlbUp() != 1 && "/auth/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除权限信息权限
            if(user.getQxlbDel() != 1 && "/auth/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看职位列表权限
            if(user.getBmlb() != 1 && "/job".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加职位列表权限
            if(user.getZwlbAdd() != 1 && "/job/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改职位列表权限
            if(user.getZwlbUp() != 1 && "/job/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除职位列表权限
            if(user.getZwlbDel() != 1 && "/job/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有添加部门信息权限
            if(user.getBmlbAdd() != 1 && "/dept/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改部门信息权限
            if(user.getBmlbUp() != 1 && "/dept/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除部门信息权限
            if(user.getBmlbDel() != 1 && "/dept/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看用户权限
            if(user.getYhlb() != 1 && "/user".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加用户权限
            if(user.getYhlbAdd() != 1 && "/user/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改用户权限
            if(user.getYhlbUp() != 1 && "/user/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除用户权限
            if(user.getYhlbDel() != 1 && "/user/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除用户权限
            if(user.getYhlbEn() != 1 && "/user/enabled".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看个人信息权限
            if(user.getGrxx() != 1 && "/user".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改个人信息权限
            if(user.getGrxxInfo() != 1 && "/user/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改个人密码权限
            if(user.getGrxxPwd() != 1 && "/user/change_pwd".equals(action)) { response.sendRedirect("/index"); }

            return true;
        } else {
            //输出action
            System.out.println(request.getServletPath());
            //跳转到首页
            response.sendRedirect("/index");
        }

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

    }

}
