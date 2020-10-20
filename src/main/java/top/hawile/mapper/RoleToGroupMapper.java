package top.hawile.mapper;

import top.hawile.entity.RoleToGroup;

public interface RoleToGroupMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RoleToGroup record);

    int insertSelective(RoleToGroup record);

    RoleToGroup selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RoleToGroup record);

    int updateByPrimaryKey(RoleToGroup record);
}