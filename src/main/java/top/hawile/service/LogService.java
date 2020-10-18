package top.hawile.service;

import top.hawile.entity.Log;
import top.hawile.entity.LogLogin;
import java.util.List;

public interface LogService {
    //获取当前登录用户的IP地址
    public String ip();
    //获取特定月份系统日志列表
    public List<Log> logMonth(String month);
    //获取特定月份登录日志列表
    public List<LogLogin> logLoginMonth(String month);
    //获取用户登录日志列表
    public List<LogLogin> loginList();
    //添加登录信息到登录日志文件
    public Boolean loginLog(String userName, String name, String content, String state);
    //获取系统日志列表
    public List<Log> systemList();
    //写入操作记录到系统日志文件
    public Boolean log(String content, String state);
}
