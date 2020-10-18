package top.hawile.mapper;

import top.hawile.entity.Form;

import java.util.List;

public interface FormMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Form record);

    int insertSelective(Form record);

    Form selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Form record);

    int updateByPrimaryKey(Form record);

    List<Form> selectAll();

    List<Form> selectSerial(String serial);

    List<Form> selectInput();
}