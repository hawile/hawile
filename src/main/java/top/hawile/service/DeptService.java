package top.hawile.service;

import top.hawile.entity.Department;

import java.util.List;

public interface DeptService {
    //获取部门列表
    List<Department> list();

    //根据部门ID查询部门信息
    Department selectId(Integer id);

    //添加部门
    int insert(Department dept);

    //更新部门
    int update(Department dept);

    //删除部门
    int delete(Integer deptId);
}
