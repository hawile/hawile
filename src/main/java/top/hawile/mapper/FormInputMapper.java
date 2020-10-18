package top.hawile.mapper;

import top.hawile.entity.FormInput;

import java.util.List;

public interface FormInputMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FormInput record);

    int insertSelective(FormInput record);

    FormInput selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FormInput record);

    int updateByPrimaryKey(FormInput record);

    List<FormInput> selectAll();
}