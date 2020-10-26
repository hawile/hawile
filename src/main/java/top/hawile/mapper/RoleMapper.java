package top.hawile.mapper;

import top.hawile.entity.Role;

import java.util.List;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    List<Role> selectAll();

    List<Role> menuByUser0(Integer userId);

    List<Role> menuByUser1(Integer userId, Integer roleId);

    List<Role> selectMenu();
}