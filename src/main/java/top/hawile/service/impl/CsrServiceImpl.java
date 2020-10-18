package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.Csr;
import top.hawile.mapper.CsrMapper;
import top.hawile.service.CsrService;
import javax.annotation.Resource;
import java.util.List;

@Service
public class CsrServiceImpl implements CsrService {

    @Resource
    private CsrMapper csrMapper;

    @Override
    //获取客户账号信息列表
    public List<Csr> list() {
        return csrMapper.selectAll();
    }

    @Override
    //添加客户账号信息
    public int insert(Csr csr) {
        return csrMapper.insertSelective(csr);
    }

    @Override
    //修改客户账号信息
    public int update(Csr csr) {
        return csrMapper.updateByPrimaryKeySelective(csr);
    }

    @Override
    //删除客户账号信息
    public int delete(Integer id) {
        return csrMapper.deleteByPrimaryKey(id);
    }
}
