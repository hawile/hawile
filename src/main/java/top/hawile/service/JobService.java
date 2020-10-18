package top.hawile.service;

import top.hawile.entity.Job;

import java.util.List;

public interface JobService {
    //获取特定部门职位
    List<Job> selectDeptId(Integer deptId);

    //获取职位列表
    List<Job> list();

    //添加职位
    int insert(Job job);

    //更新职位
    int update(Job job);

    //删除职位
    int delete(Integer jobId);
}
