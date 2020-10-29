package top.hawile.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import top.hawile.interceptor.LoginInterceptor;

/**
 * @author Hawile
 */
@Configuration
public class LoginConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //注册拦截器
        InterceptorRegistration registration = registry.addInterceptor(new LoginInterceptor());
        //添加拦截路径
        registration.addPathPatterns("/**");
        //排除例外路径
        registration.excludePathPatterns("/", "/**/*.js", "/**/*.css", "/**/*.xls*", "/**/*.gif",
                "/**/*.png","/**/*.ico","/**/*.jp*","/**/*.woff*", "/login", "/user/apply","/**/*.doc*", "/**/*.pdf",
                "/user_sign/apply", "/job/findByDeptId");
    }
}
