package top.hawile.mapper;

import top.hawile.entity.LogLogin;

import java.util.List;

public interface LogLoginMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LogLogin record);

    int insertSelective(LogLogin record);

    LogLogin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LogLogin record);

    int updateByPrimaryKey(LogLogin record);

    List<LogLogin> selectMonth(String month);

    List<LogLogin> selectUserName(String userName);

    List<LogLogin> selectAll();
}