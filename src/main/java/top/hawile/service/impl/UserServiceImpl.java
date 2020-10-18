package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.User;
import top.hawile.mapper.UserMapper;
import top.hawile.service.LogService;
import top.hawile.service.UserService;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class UserServiceImpl implements UserService {

    @Resource
    private HttpSession session;
    @Resource
    private UserMapper userMapper;
    @Resource
    private LogService logService;

    @Override
    //登录请求
    public int login(String userName, String password){
        //判断用户名是否为空
        if (userName == null || "".equals(userName)) {
            return 1;
        }
        //判断是否存在该用户
        if (userMapper.userCount(userName) == 0){
            //将当前操作写入系统日志
            logService.loginLog(userName, "空", "用户不存在", "失败");
            return 2;
        }
        //判断用户密码是否与数据库中密码一致
        if (userMapper.pwdCount(userName,password) == 0){
            //将当前操作写入系统日志
            logService.loginLog(userName, "空", "密码验证失败", "失败");
            return 3;
        }
        if(userMapper.pwdCount(userName,password) == 1){
            //根据用户名查找该用户信息
            User user = userMapper.findByUserName(userName);
            //将user对象存入session
            session.setAttribute("user", user);
            //将当前操作写入系统日志
            logService.loginLog(userName, user.getName(), "密码验证通过", "成功");
            //判断是否为首次必须修改密码
            if(user.getFirstPwd() == 1){
                return 4;
            }
            //获取当前浏览器的SessionId
            String sessionId = session.getId();
            //将当前sessionId存入数据库
            userMapper.updateSessionId(sessionId,userName);
            return 10;
        }
        return 0;
    }

    @Override
    //获取用户列表
    public List<User> list() {
        return userMapper.selectAll();
    }

    @Override
    //根据特定用户名查找用户
    public User findByUserName(String userName) {
        return userMapper.findByUserName(userName);
    }

    @Override
    //查询特定用户名的用户数量
    public int userCount(String userName) {
        return userMapper.userCount(userName);
    }

    @Override
    //判断特定用户密码是否正确
    public int password(String userName, String password) {
        return userMapper.pwdCount(userName,password);
    }

    @Override
    //获取enabledId
    public int enabledId(String userName) {
        return userMapper.enabledId(userName);
    }

    @Override
    //获取特定用户信息
    public User findById(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    //添加用户
    public int insert(User user) {
        //判断数据库是否已存在该用户名
        if(userMapper.userCount(user.getUserName()) > 0){
            return 2;
        }
        //封装当前系统时间到user对象
        user.setCreateTime(new Timestamp(new Date().getTime()));
        //设置账户为启用状态
        user.setEnabled(1);
        return userMapper.insertSelective(user);
    }

    @Override
    //更新用户
    public int update(User user) {
        return userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    //删除用户
    public int delete(Integer id)  {
        return userMapper.deleteByPrimaryKey(id);
    }

    @Override
    //更新用户停启用状态
    public int updateEnabled(Integer id, Integer enabled) {
        //如果用户原来为停用状态
        if (enabled == 0){
            userMapper.updateEnabled(id,1);
            return 1;
        }
        if (enabled == 1) {
            userMapper.updateEnabled(id,0);
            return 2;
        }
        return 0;
    }

    @Override
    //更新用户sessionId
    public int updateSessionId(String sessionId, String userName) {
        return userMapper.updateSessionId(sessionId,userName);
    }

    @Override
    //修改用户密码
    public int changePwd(String oldPwd, String newPwd, String userName) {
        //判断原密码是否正确
        if(password(userName,oldPwd) == 0){
            return 2;
        }
        //执行修改密码操作
        int state = userMapper.changePwd(newPwd,userName);
        //判断密码是否修改成功
        if(state == 1){
            //更新firstPwd值
            userMapper.updateFirstPwd(0,userName);
        }
        return state;
    }
}
