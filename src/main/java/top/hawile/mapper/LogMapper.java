package top.hawile.mapper;

import top.hawile.entity.Log;

import java.util.List;

public interface LogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Log record);

    int insertSelective(Log record);

    Log selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Log record);

    int updateByPrimaryKey(Log record);

    List<Log> selectAll();

    List<Log> selectMonth(String month);

    List<Log> selectUserName(String userName);
}