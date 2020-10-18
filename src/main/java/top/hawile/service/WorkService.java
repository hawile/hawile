package top.hawile.service;

import top.hawile.entity.Work;

import java.util.List;

public interface WorkService {
    //获取工作列表
    List<Work> list();

    //添加工作内容
    int insert(Work work);

    //更新工作内容
    int update(Work work);

    //删除工作内容
    int delete(Integer id);

    //导出工作报表为Excel
    void exportExcel(String beginDate, String endDate, String filePath);
}
