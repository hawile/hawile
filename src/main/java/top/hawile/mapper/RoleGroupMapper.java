package top.hawile.mapper;

import top.hawile.entity.RoleGroup;

public interface RoleGroupMapper {
    int deleteByPrimaryKey(Integer groupId);

    int insert(RoleGroup record);

    int insertSelective(RoleGroup record);

    RoleGroup selectByPrimaryKey(Integer groupId);

    int updateByPrimaryKeySelective(RoleGroup record);

    int updateByPrimaryKey(RoleGroup record);
}