package top.hawile.mapper;

import top.hawile.entity.UserSign;

import java.util.List;

public interface UserSignMapper {
    List<UserSign> selectAll();

    int deleteByPrimaryKey(Integer id);

    int insert(UserSign record);

    int insertSelective(UserSign record);

    UserSign selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserSign record);

    int updateByPrimaryKey(UserSign record);
    //统计待处理申请数量
    int count();
    //复制密码到用户列表
    int copyPassword(String userName);
}