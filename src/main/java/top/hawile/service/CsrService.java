package top.hawile.service;

import top.hawile.entity.Csr;

import java.util.List;

public interface CsrService {

    //获取客户账号信息列表
    List<Csr> list();

    //添加客户账号信息
    int insert(Csr csr);

    //修改客户账号信息
    int update(Csr csr);

    //删除客户账号信息
    int delete(Integer id);

}
