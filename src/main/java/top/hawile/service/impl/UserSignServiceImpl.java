package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.UserSign;
import top.hawile.mapper.UserSignMapper;
import top.hawile.service.UserSignService;

import javax.annotation.Resource;
import java.util.List;
@Service
public class UserSignServiceImpl implements UserSignService {

    @Resource
    private UserSignMapper userSignMapper;

    @Override
    //获取用户申请列表
    public List<UserSign> list() {
        return userSignMapper.selectAll();
    }

    @Override
    //添加用户申请
    public int insert(UserSign userSign) {
        return userSignMapper.insertSelective(userSign);
    }

    @Override
    //更新用户申请
    public int update(UserSign userSign) {
        return userSignMapper.updateByPrimaryKeySelective(userSign);
    }

    @Override
    //删除用户申请
    public int delete(Integer id) {
        return userSignMapper.deleteByPrimaryKey(id);
    }

    @Override
    //复制密码到用户列表
    public int copyPassword(String userName) {
        return userSignMapper.copyPassword(userName);
    }

    @Override
    //获取用户申请数量
    public int count() {
        return userSignMapper.count();
    }
}
