package top.hawile.service;

import top.hawile.entity.Role;

import java.util.List;

public interface RoleService {

    //获取权限列表
    List<Role> list();

    //添加权限
    int insert(Role role);

    //编辑权限
    int update(Role role);

    //删除权限
    int delete(Integer id);

    List<Role> menuByUser0(Integer userId);

    List<Role> menuByUser1(Integer userId, Integer roleId);

    //查询菜单列表
    List<Role> selectMenu();
}
