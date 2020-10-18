package top.hawile.service;

import top.hawile.entity.UserSign;

import java.util.List;

public interface UserSignService {

    //获取用户申请列表
    List<UserSign> list();

    //添加用户申请
    int insert(UserSign userSign);

    //更新用户申请
    int update(UserSign userSign);

    //删除用户申请
    int delete(Integer id);

    //复制密码到用户列表
    int copyPassword(String userName);

    //获取用户申请数量
    int count();
}
