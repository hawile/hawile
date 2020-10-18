package top.hawile.service;

import top.hawile.entity.SoftOS;

import java.util.List;

public interface SoftOSService {

    //获取系统列表
    List<SoftOS> list();

    //添加软件
    int insert(SoftOS softApp);

    //修改软件
    int update(SoftOS softApp, String path);

    //删除软件
    int delete(Integer id, String path);
}
