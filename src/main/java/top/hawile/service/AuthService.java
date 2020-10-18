package top.hawile.service;

import top.hawile.entity.Authority;

import java.util.List;

public interface AuthService {
    //获取权限列表
    List<Authority> list();

    //添加权限组
    int insert(Authority authority);

    //更新权限组
    int update(Authority authority);

    //删除权限组
    int delete(Integer authId);
}
