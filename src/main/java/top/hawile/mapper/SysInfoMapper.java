package top.hawile.mapper;

import top.hawile.entity.SysInfo;

public interface SysInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysInfo record);

    int insertSelective(SysInfo record);

    SysInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysInfo record);

    int updateByPrimaryKey(SysInfo record);

    SysInfo selectByName(String name);
}