package top.hawile.mapper;

import top.hawile.entity.Contact;

import java.util.List;

public interface ContactMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Contact record);

    int insertSelective(Contact record);

    Contact selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Contact record);

    int updateByPrimaryKey(Contact record);

    List<Contact> selectAll();

    //查询特定ID组的厂商联系人信息列表
    List<Contact> selectId(String[] id);
}