package top.hawile.service;

import top.hawile.entity.RoleToUser;

import java.util.List;

public interface RoleToUserService {

    int insert(RoleToUser roleToUser);

    int update(RoleToUser roleToUser);

    int delete(Integer id);

    List<RoleToUser> listByUserId(Integer id);

    List<RoleToUser> listByRoleId(Integer id);

    int deleteByUserId(Integer id);

    int deleteByRoleId(Integer id);
}
