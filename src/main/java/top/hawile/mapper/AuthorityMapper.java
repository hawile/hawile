package top.hawile.mapper;

import top.hawile.entity.Authority;

import java.util.List;

public interface AuthorityMapper {
    int deleteByPrimaryKey(Integer authId);

    int insert(Authority record);

    int insertSelective(Authority record);

    Authority selectByPrimaryKey(Integer authId);

    int updateByPrimaryKeySelective(Authority record);

    int updateByPrimaryKey(Authority record);

    List<Authority> selectAll();
}