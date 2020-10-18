package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.Authority;
import top.hawile.mapper.AuthorityMapper;
import top.hawile.mapper.UserMapper;
import top.hawile.service.AuthService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class AuthServiceImpl implements AuthService {

    @Resource
    private AuthorityMapper authorityMapper;
    @Resource
    private UserMapper userMapper;
    @Override
    //获取权限列表
    public List<Authority> list() {
        return authorityMapper.selectAll();
    }

    @Override
    //添加权限组
    public int insert(Authority authority) {
        return authorityMapper.insert(authority);
    }

    @Override
    //更新权限组
    public int update(Authority authority) {
        return authorityMapper.updateByPrimaryKey(authority);
    }

    @Override
    //删除权限组
    public int delete(Integer authId) {
        //判断该权限组是否绑定用户
        if(userMapper.find("auth_id",String.valueOf(authId)).size() > 0){
            return 2;
        }
        return authorityMapper.deleteByPrimaryKey(authId);
    }
}
