package top.hawile.mapper;

import top.hawile.entity.AccNum;

import java.util.List;

public interface AccNumMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AccNum record);

    int insertSelective(AccNum record);

    AccNum selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AccNum record);

    int updateByPrimaryKey(AccNum record);

    List<AccNum> selectAll();

    //查询特定ID组的账号信息列表
    List<AccNum> selectId(String[] id);
}