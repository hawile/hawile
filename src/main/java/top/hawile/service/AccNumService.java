package top.hawile.service;

import top.hawile.entity.AccNum;

import java.io.UnsupportedEncodingException;
import java.util.List;

public interface AccNumService {

    //获取账号信息列表
    List<AccNum> list();

    //添加账号信息
    int insert(AccNum accNum);

    //修改账号信息
    int update(AccNum accNum);

    //删除账号信息
    int delete(Integer id);

    //导出账号信息到Excel
    void exportExcel(String exportId) throws Exception;
}
