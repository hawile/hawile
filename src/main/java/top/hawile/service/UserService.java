package top.hawile.service;

import top.hawile.entity.User;

import java.util.List;

public interface UserService {

    /*登录请求
     * state状态码:
     * 1 用户名为空
     * 2 密码为空
     * 3 用户不存在
     * 4 密码错误
     * 5 需要修改密码
     * 10 登录成功
     * 0 系统错误*/
    int login(String userName, String password);
    //获取用户列表
    List<User> list();
    //根据特定用户名查找用户
    User findByUserName(String userName);
    //查询特定用户名的用户数量
    int userCount(String userName);
    //判断特定用户密码是否正确
    int password(String userName, String password);
    //获取enabledId
    int enabledId(String userName);
    //获取特定id的用户信息
    User findById(Integer id);
    //添加用户
    int insert(User user);
    //更新用户
    int update(User user);
    //删除用户
    int delete(Integer id);
    //更新用户停启用状态
    int updateEnabled(Integer id, Integer enabled);
    //更新用户sessionId
    int updateSessionId(String sessionId, String userName);
    //修改用户密码
    int changePwd(String oldPwd, String newPwd, String userName);

}
