package top.hawile.mapper;

import top.hawile.entity.SoftDrive;

import java.util.List;

public interface SoftDriveMapper {

    List<SoftDrive> selectAll();

    int deleteByPrimaryKey(Integer id);

    int insert(SoftDrive record);

    int insertSelective(SoftDrive record);

    SoftDrive selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SoftDrive record);

    int updateByPrimaryKey(SoftDrive record);
}