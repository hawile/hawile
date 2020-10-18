package top.hawile.mapper;

import top.hawile.entity.Job;

import java.util.List;

public interface JobMapper {
    int deleteByPrimaryKey(Integer jobId);

    int insert(Job record);

    int insertSelective(Job record);

    Job selectByPrimaryKey(Integer jobId);

    int updateByPrimaryKeySelective(Job record);

    int updateByPrimaryKey(Job record);

    List<Job> selectDeptId(Integer deptId);

    List<Job> selectAll();
}