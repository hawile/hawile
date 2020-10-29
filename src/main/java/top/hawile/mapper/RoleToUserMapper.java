package top.hawile.mapper;

import top.hawile.entity.RoleToUser;

import java.util.List;

public interface RoleToUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RoleToUser record);

    int insertSelective(RoleToUser record);

    RoleToUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RoleToUser record);

    int updateByPrimaryKey(RoleToUser record);

    List<RoleToUser> selectByUserId(Integer id);

    List<RoleToUser> selectByRoleId(Integer id);

    RoleToUser selectByRoleIdAndUserId(Integer roleId, Integer userId);

    int deleteByUserId(Integer id);

    int deleteByRoleId(Integer id);
}