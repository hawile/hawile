package top.hawile.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

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
        } else if(session.getAttribute("role") != null){    //判断session中是否存在权限信息对象
            //获取session中权限信息
            Map<String,Object> role = (Map<String, Object>) session.getAttribute("role");
            //判断是否有查看厂商信息权限
            if(!role.get("contact").equals(1) && "/contact".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加厂商信息权限
            if(!role.get("contact-add").equals(1) && "/contact/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改厂商信息权限
            if(!role.get("contact-edit").equals(1) && "/contact/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除厂商信息权限
            if(!role.get("contact-delete").equals(1) && "/contact/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看账号信息权限
            if(!role.get("account").equals(1) && "/acc_num".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加账号信息权限
            if(!role.get("account-add").equals(1) && "/acc_num/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改账号信息权限
            if(!role.get("account-edit").equals(1) && "/acc_num/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除账号信息权限
            if(!role.get("account-delete").equals(1) && "/acc_num/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看客户账号权限
            if(!role.get("csr").equals(1) && "/csr".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加客户账号权限
            if(!role.get("csr-add").equals(1) && "/csr/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改客户账号权限
            if(!role.get("csr-edit").equals(1) && "/csr/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除客户账号权限
            if(!role.get("csr-delete").equals(1) && "/csr/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看售货机订单信息权限
            if(!role.get("atm").equals(1) && "/atm".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加售货机订单信息权限
            if(!role.get("atm-add").equals(1) && "/atm/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除售货机订单信息权限
            if(!role.get("atm-delete").equals(1) && "/atm/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看工作报表权限
            if(!role.get("work").equals(1) && "/work".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加工作报表权限
            if(!role.get("work-add").equals(1) && "/work/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改工作报表权限
            if(!role.get("work-edit").equals(1) && "/work/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除工作报表权限
            if(!role.get("work-delete").equals(1) && "/work/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有打印工作报表权限
            if(!role.get("work-print").equals(1) && "/work/print".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看文件权限
            if(!role.get("file").equals(1) && "/file".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加文件权限
            if(!role.get("file-add").equals(1) && "/file/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改文件权限
            if(!role.get("file-edit").equals(1) && "/file/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除文件权限
            if(!role.get("file-delete").equals(1) && "/file/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载文件权限
            if(!role.get("file-download").equals(1) && "/file/download".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看表单权限
            if(!role.get("form").equals(1) && "/form".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加表单权限
            if(!role.get("form-add").equals(1) && "/form/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改表单权限
            if(!role.get("form-edit").equals(1) && "/form/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除表单权限
            if(!role.get("form-delete").equals(1) && "/form/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载表单权限
            if(!role.get("form-download").equals(1) && "/form/download".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有填写表单权限
            if(!role.get("form-input").equals(1) && "/form_input".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看应用软件权限
            if(!role.get("softApp").equals(1) && "/soft_app".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加应用软件权限
            if(!role.get("softApp-add").equals(1) && "/soft_app/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改应用软件权限
            if(!role.get("softApp-edit").equals(1) && "/soft_app/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除应用软件权限
            if(!role.get("softApp-delete").equals(1) && "/soft_app/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载应用软件权限
            if(!role.get("softApp-download").equals(1) && "/soft_app/download".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看驱动软件权限
            if(!role.get("softDrive").equals(1) && "/soft_drive".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加驱动软件权限
            if(!role.get("softDrive-add").equals(1) && "/soft_drive/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改驱动软件权限
            if(!role.get("softDrive-edit").equals(1) && "/soft_drive/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除驱动软件权限
            if(!role.get("softDrive-delete").equals(1) && "/soft_drive/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载驱动软件权限
            if(!role.get("softDrive-download").equals(1) && "/soft_drive/download".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看系统软件权限
            if(!role.get("softOs").equals(1) && "/soft_os".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加系统软件权限
            if(!role.get("softOs-add").equals(1) && "/soft_os/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改系统软件权限
            if(!role.get("softOs-edit").equals(1) && "/soft_os/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除系统软件权限
            if(!role.get("softOs-delete").equals(1) && "/soft_os/delete".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有下载系统软件权限
            if(!role.get("softOs-view").equals(1) && "/soft_os/view".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看权限信息权限
            if(!role.get("role").equals(1) && "/auth".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加权限信息权限
            if(!role.get("role-add").equals(1) && "/auth/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改权限信息权限
            if(!role.get("role-edit").equals(1) && "/auth/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除权限信息权限
            if(!role.get("role-delete").equals(1) && "/auth/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看职位列表权限
            if(!role.get("post").equals(1) && "/job".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加职位列表权限
            if(!role.get("job-add").equals(1) && "/job/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改职位列表权限
            if(!role.get("job-edit").equals(1) && "/job/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除职位列表权限
            if(!role.get("job-delete").equals(1) && "/job/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有添加部门信息权限
            if(!role.get("dept-add").equals(1) && "/dept/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改部门信息权限
            if(!role.get("dept-edit").equals(1) && "/dept/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除部门信息权限
            if(!role.get("dept-delete").equals(1) && "/dept/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看用户权限
            if(!role.get("user").equals(1) && "/user".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有添加用户权限
            if(!role.get("user-add").equals(1) && "/user/insert".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改用户权限
            if(!role.get("user-edit").equals(1) && "/user/update".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有删除用户权限
            if(!role.get("user-delete").equals(1) && "/user/delete".equals(action)) { response.sendRedirect("/index"); }

            //判断是否有查看个人信息权限
            if(!role.get("userInfo").equals(1) && "/user".equals(action)) { response.sendRedirect("/index"); }
            //判断是否有修改个人信息权限
            if(!role.get("userInfo-edit").equals(1) && "/user/update".equals(action)) { response.sendRedirect("/index"); }

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
