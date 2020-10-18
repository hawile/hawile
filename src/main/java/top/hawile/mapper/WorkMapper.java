package top.hawile.mapper;

import top.hawile.entity.Work;

import java.util.List;

public interface WorkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Work record);

    int insertSelective(Work record);

    Work selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Work record);

    int updateByPrimaryKey(Work record);

    List<Work> selectDate(String beginDate, String endDate);

    List<Work> selectAll();
}