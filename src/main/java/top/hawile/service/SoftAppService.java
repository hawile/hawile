package top.hawile.service;

import top.hawile.entity.SoftApp;

import java.util.List;

public interface SoftAppService {

    //获取应用软件列表
    List<SoftApp> list();

    //添加软件
    int insert(SoftApp softApp);

    //修改软件
    int update(SoftApp softApp, String path);

    //删除软件
    int delete(Integer id, String path);
}
