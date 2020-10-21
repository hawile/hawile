package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.Role;
import top.hawile.mapper.RoleMapper;
import top.hawile.service.RoleService;
import javax.annotation.Resource;
import java.util.List;
@Service
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleMapper roleMapper;

    @Override
    public List<Role> list() {
        return roleMapper.selectAll();
    }

    @Override
    public int insert(Role role) {
        return roleMapper.insertSelective(role);
    }

    @Override
    public int update(Role role) {
        return roleMapper.updateByPrimaryKeySelective(role);
    }

    @Override
    public int delete(Integer id) {
        return roleMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<Role> menuByUser0(Integer userId) {
        return roleMapper.menuByUser0(userId);
    }

    @Override
    public List<Role> menuByUser1(Integer userId, Integer roleId) {
        return roleMapper.menuByUser1(userId,roleId);
    }
}
