package top.hawile.service;

import top.hawile.entity.SysInfo;

public interface SysInfoService {

    //更新记录
    int update(SysInfo sysInfo);

    //根据名称查询记录
    SysInfo selectByName(String name);
}
