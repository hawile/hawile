package top.hawile.mapper;

import top.hawile.entity.SoftApp;

import java.util.List;

public interface SoftAppMapper {

    List<SoftApp> selectAll();

    int deleteByPrimaryKey(Integer id);

    int insert(SoftApp record);

    int insertSelective(SoftApp record);

    SoftApp selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SoftApp record);

    int updateByPrimaryKey(SoftApp record);
}