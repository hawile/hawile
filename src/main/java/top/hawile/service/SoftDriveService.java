package top.hawile.service;

import top.hawile.entity.SoftDrive;

import java.util.List;

public interface SoftDriveService {

    //获取驱动列表
    List<SoftDrive> list();

    //添加软件
    int insert(SoftDrive softApp);

    //修改软件
    int update(SoftDrive softApp, String path);

    //删除软件
    int delete(Integer id, String path);
}
