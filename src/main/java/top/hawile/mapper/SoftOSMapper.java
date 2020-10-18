package top.hawile.mapper;

import top.hawile.entity.SoftOS;

import java.util.List;

public interface SoftOSMapper {

    List<SoftOS> selectAll();

    int deleteByPrimaryKey(Integer id);

    int insert(SoftOS record);

    int insertSelective(SoftOS record);

    SoftOS selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SoftOS record);

    int updateByPrimaryKey(SoftOS record);
}