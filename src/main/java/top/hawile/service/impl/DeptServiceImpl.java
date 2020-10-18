package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.Department;
import top.hawile.mapper.DepartmentMapper;
import top.hawile.mapper.JobMapper;
import top.hawile.service.DeptService;
import top.hawile.service.LogService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class DeptServiceImpl implements DeptService {

    @Resource
    private DepartmentMapper deptMapper;
    @Resource
    private JobMapper jobMapper;
    @Resource
    private LogService logService;
    @Override
    public List<Department> list() {
        return deptMapper.selectAll();
    }

    @Override
    //根据部门ID查询部门信息
    public Department selectId(Integer id) {
        return deptMapper.selectByPrimaryKey(id);
    }

    @Override
    //添加部门
    public int insert(Department dept) { return deptMapper.insertSelective(dept); }

    @Override
    //更新部门
    public int update(Department dept) { return deptMapper.updateByPrimaryKeySelective(dept); }

    @Override
    //删除部门
    public int delete(Integer deptId) {
        //判断是否绑定了职务
        if(jobMapper.selectDeptId(deptId).size() > 0){
            return 2;
        }
        return deptMapper.deleteByPrimaryKey(deptId);
    }
}
