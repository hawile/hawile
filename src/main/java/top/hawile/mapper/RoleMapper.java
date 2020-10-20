package top.hawile.mapper;

import top.hawile.entity.Role;

import java.util.List;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer authId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer authId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    List<Role> selectAll();
}