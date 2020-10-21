package top.hawile.mapper;

import top.hawile.entity.RoleToUser;

public interface RoleToUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RoleToUser record);

    int insertSelective(RoleToUser record);

    RoleToUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RoleToUser record);

    int updateByPrimaryKey(RoleToUser record);
}