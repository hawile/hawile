package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.Role;
import top.hawile.entity.RoleToUser;
import top.hawile.entity.User;
import top.hawile.mapper.RoleMapper;
import top.hawile.service.RoleService;
import top.hawile.service.RoleToUserService;
import top.hawile.service.UserService;

import javax.annotation.Resource;
import java.util.List;
@Service
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleMapper roleMapper;
    @Resource
    private RoleToUserService roleToUserService;
    @Resource
    private UserService userService;

    @Override
    public List<Role> list() {
        return roleMapper.selectAll();
    }

    @Override
    public int insert(Role role) {
        //添加权限到数据库操作
        int state = roleMapper.insertSelective(role);
        //判断是否添加成功
        if (state == 1){
            //获取用户列表
            List<User> userList = userService.list();
            //循环遍历用户列表
            for (User user:userList){
                //新建对象
                RoleToUser roleToUser = new RoleToUser();
                //设置权限对象userId值
                roleToUser.setUserId(user.getId());
                //设置权限对象roleId值
                roleToUser.setRoleId(role.getId());
                //设置权限对象默认值
                roleToUser.setValue(0);
                //执行添加到数据库操作
                roleToUserService.insert(roleToUser);
            }
            //将用户转换成数组
            String[] users = role.getUsers().split(",");
            //循环遍历权限用户
            for (String id:users){
                //新建对象
                RoleToUser roleToUser = new RoleToUser();
                //设置权限对象userId值
                roleToUser.setUserId(Integer.parseInt(id));
                //设置权限对象roleId值
                roleToUser.setRoleId(role.getId());
                //设置权限对象默认值
                roleToUser.setValue(1);
                //执行更新到数据库操作
                roleToUserService.update(roleToUser);
            }
        }
        return state;
    }

    @Override
    public int update(Role role) {
        //修改权限到数据库操作
        int state = roleMapper.updateByPrimaryKeySelective(role);
        //判断是否修改成功
        if (state == 1){
            //获取用户列表
            List<User> userList = userService.list();
            //循环遍历用户列表
            for (User user:userList){
                //新建对象
                RoleToUser roleToUser = new RoleToUser();
                //设置权限对象userId值
                roleToUser.setUserId(user.getId());
                //设置权限对象roleId值
                roleToUser.setRoleId(role.getId());
                //设置权限对象默认值
                roleToUser.setValue(0);
                //执行修改到数据库操作
                roleToUserService.update(roleToUser);
            }
            //将用户转换成数组
            String[] users = role.getUsers().split(",");
            //循环遍历权限用户
            for (String id:users){
                //新建对象
                RoleToUser roleToUser = new RoleToUser();
                //设置权限对象userId值
                roleToUser.setUserId(Integer.parseInt(id));
                //设置权限对象roleId值
                roleToUser.setRoleId(role.getId());
                //设置权限对象默认值
                roleToUser.setValue(1);
                //执行更新到数据库操作
                roleToUserService.update(roleToUser);
            }
        }
        return state;
    }

    @Override
    public int delete(Integer id) {
        //删除权限到数据库操作
        int state = roleMapper.deleteByPrimaryKey(id);
        //判断是否删除成功
        if (state == 1){
            //删除所有该权限的用户权限信息
            roleToUserService.deleteByRoleId(id);
        }
        return state;
    }

    @Override
    public List<Role> menuByUser0(Integer userId) {
        return roleMapper.menuByUser0(userId);
    }

    @Override
    public List<Role> menuByUser1(Integer userId, Integer roleId) {
        return roleMapper.menuByUser1(userId,roleId);
    }

    @Override
    public List<Role> selectMenu() {
        return roleMapper.selectMenu();
    }
}
