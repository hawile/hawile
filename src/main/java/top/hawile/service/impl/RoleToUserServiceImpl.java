package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.RoleToUser;
import top.hawile.mapper.RoleToUserMapper;
import top.hawile.service.RoleToUserService;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoleToUserServiceImpl implements RoleToUserService {

    @Resource
    private RoleToUserMapper roleToUserMapper;

    @Override
    public int insert(RoleToUser roleToUser) {
        return roleToUserMapper.insertSelective(roleToUser);
    }

    @Override
    public int update(RoleToUser roleToUser) {
        return roleToUserMapper.updateByPrimaryKeySelective(roleToUser);
    }

    @Override
    public int delete(Integer id) {
        return roleToUserMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<RoleToUser> listByUserId(Integer id) {
        return roleToUserMapper.selectByUserId(id);
    }

    @Override
    public List<RoleToUser> listByRoleId(Integer id) {
        return roleToUserMapper.selectByRoleId(id);
    }

    @Override
    public RoleToUser selectByRoleIdAndUserId(Integer roleId, Integer userId) {
        return roleToUserMapper.selectByRoleIdAndUserId(roleId,userId);
    }

    @Override
    public int deleteByUserId(Integer id) {
        return roleToUserMapper.deleteByUserId(id);
    }

    @Override
    public int deleteByRoleId(Integer id) {
        return roleToUserMapper.deleteByRoleId(id);
    }
}
