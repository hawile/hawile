package top.hawile.mapper;

import top.hawile.entity.Csr;

import java.util.List;

public interface CsrMapper {

    List<Csr> selectAll();

    int deleteByPrimaryKey(Integer id);

    int insert(Csr record);

    int insertSelective(Csr record);

    Csr selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Csr record);

    int updateByPrimaryKey(Csr record);

    //批量修改状态
    int updateManyState(String state, List<String> ids, String remark);

    //批量删除
    int deleteMany(List<String> ids);
}