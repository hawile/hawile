package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.AtmGoods;
import top.hawile.mapper.AtmGoodsMapper;
import top.hawile.service.AtmGoodsService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class AtmGoodsServiceImpl implements AtmGoodsService {

    @Resource
    private AtmGoodsMapper atmGoodsMapper;
    
    @Override
    //获取订单商品列表
    public List<AtmGoods> selectByOrderId(Integer orderId) {
        return atmGoodsMapper.selectByOrderId(orderId);
    }

    @Override
    //添加订单商品
    public int insert(AtmGoods atmGoods) {
        return atmGoodsMapper.insertSelective(atmGoods);
    }

    @Override
    //修改订单商品
    public int update(AtmGoods atmGoods) {
        return atmGoodsMapper.updateByPrimaryKeySelective(atmGoods);
    }

    @Override
    //删除订单商品
    public int delete(Integer id) {
        return atmGoodsMapper.deleteByPrimaryKey(id);
    }

    @Override
    //删除特定订单的商品信息
    public int deleteByOrderId(Integer orderId) {
        return atmGoodsMapper.deleteByOrderId(orderId);
    }


}
