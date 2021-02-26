package top.hawile.mapper;

import top.hawile.entity.ItAssets;
import java.util.List;

public interface ItAssetsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ItAssets record);

    int insertSelective(ItAssets record);

    ItAssets selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ItAssets record);

    int updateByPrimaryKey(ItAssets record);

    List<ItAssets> selectAll();

    //查询特定ID组的IT固定资产列表
    List<ItAssets> selectId(String[] id);

    //查询特定设备编号的IT固定资产设备
    ItAssets selectNumber(String number);
}