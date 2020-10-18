package top.hawile.mapper;

import top.hawile.entity.Atm;

import java.util.List;

public interface AtmMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Atm record);

    int insertSelective(Atm record);

    Atm selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Atm record);

    int updateByPrimaryKey(Atm record);

    //获取所有售货机订单信息列表
    List<Atm> selectAll();

    //获取特定ID组的售货机订单信息列表
    List<Atm> selectId(String[] id);
}