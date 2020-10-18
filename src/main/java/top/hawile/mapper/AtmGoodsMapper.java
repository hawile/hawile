package top.hawile.mapper;

import top.hawile.entity.AtmGoods;

import java.util.List;

public interface AtmGoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AtmGoods record);

    int insertSelective(AtmGoods record);

    AtmGoods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AtmGoods record);

    int updateByPrimaryKey(AtmGoods record);

    //查询特定订单的商品信息
    List<AtmGoods> selectByOrderId(Integer orderId);

    //删除特定订单的商品信息
    int deleteByOrderId(Integer orderId);
}