package top.hawile.mapper;

import top.hawile.entity.FileEntity;

import java.util.List;

public interface FileMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FileEntity record);

    int insertSelective(FileEntity record);

    FileEntity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FileEntity record);

    int updateByPrimaryKey(FileEntity record);

    List<FileEntity> selectAll();

    List<FileEntity> selectSerial(String serial);
}