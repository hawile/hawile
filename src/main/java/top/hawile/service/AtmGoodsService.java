package top.hawile.service;

import top.hawile.entity.AtmGoods;
import java.util.List;

public interface AtmGoodsService {

    //获取订单商品列表
    List<AtmGoods> selectByOrderId(Integer orderId);

    //添加订单商品
    int insert(AtmGoods atmGoods);

    //修改订单商品
    int update(AtmGoods atmGoods);

    //删除订单商品
    int delete(Integer id);

    //删除特定orderId的订单商品
    int deleteByOrderId(Integer orderId);
}
