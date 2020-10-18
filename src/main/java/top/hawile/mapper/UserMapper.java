package top.hawile.mapper;

import top.hawile.entity.User;

import java.util.List;

public interface UserMapper {

    int insertSelective(User record);


    int updateByPrimaryKeySelective(User record);


    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    User selectByPrimaryKey(Integer id);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    User findByUserName(String userName);

    int updateEnabled(Integer id, Integer enabled);

    int updateSessionId(String sessionId, String userName);

    List<User> find(String field, String values);

    //查询特定用户名的用户数量
    int userCount(String userName);

    //查询特定用户密码一致的用户数量
    int pwdCount(String userName, String password);

    //获取enabledId
    int enabledId(String userName);

    //修改用户密码
    int changePwd(String password, String userName);

    //修改首次修改密码ID
    int updateFirstPwd(Integer firstPwd, String userName);
}