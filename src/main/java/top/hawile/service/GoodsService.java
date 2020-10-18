package top.hawile.service;

import top.hawile.entity.Goods;

import java.util.List;

public interface GoodsService {

    //获取商品列表
    List<Goods> list();

    //添加商品
    int insert(Goods goods);

    //修改商品
    int update(Goods goods);

    //删除商品
    int delete(Integer id);
}
