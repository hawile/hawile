package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.Job;
import top.hawile.mapper.JobMapper;
import top.hawile.mapper.UserMapper;
import top.hawile.service.JobService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class JobServiceImpl implements JobService {

    @Resource
    private JobMapper jobMapper;
    @Resource
    private UserMapper userMapper;
    @Override
    //获取特定部门的职位
    public List<Job> selectDeptId(Integer deptId) {
        return jobMapper.selectDeptId(deptId);
    }

    @Override
    //获取职位列表
    public List<Job> list() {
        return jobMapper.selectAll();
    }

    @Override
    //添加职位
    public int insert(Job job) { return jobMapper.insert(job); }

    @Override
    //更新职位
    public int update(Job job) { return jobMapper.updateByPrimaryKey(job); }

    @Override
    //删除职位
    public int delete(Integer jobId) {
        //判断该职位是否绑定了用户
        if(userMapper.find("job_id",String.valueOf(jobId)).size() > 0){
            return 2;
        }
        return jobMapper.deleteByPrimaryKey(jobId);
    }
}
