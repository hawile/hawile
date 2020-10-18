package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.Goods;
import top.hawile.mapper.GoodsMapper;
import top.hawile.service.GoodsService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class GoodsServiceImpl implements GoodsService {

    @Resource
    private GoodsMapper goodsMapper;

    @Override
    //获取商品列表
    public List<Goods> list() {
        return goodsMapper.selectAll();
    }

    @Override
    //添加商品
    public int insert(Goods goods) {
        return goodsMapper.insertSelective(goods);
    }

    @Override
    //修改商品
    public int update(Goods goods) {
        return goodsMapper.updateByPrimaryKeySelective(goods);
    }

    @Override
    //删除商品
    public int delete(Integer id) {
        return goodsMapper.deleteByPrimaryKey(id);
    }
}
