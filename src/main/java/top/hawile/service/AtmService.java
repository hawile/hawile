package top.hawile.service;

import top.hawile.entity.Atm;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

public interface AtmService {

    //获取售货机订单信息列表
    List<Atm> list();

    //获取特定ID的订单信息
    Atm selectById(Integer id);

    //添加售货机订单信息
    int insert(Atm atm, String goodsNum, String goodsNum2);

    //修改售货机订单信息
    int update(Atm atm, String goodsNum, String goodsNum2);

    //删除售货机订单信息
    int delete(Integer id);

    //导出售货机订单信息到Excel
    void exportExcel(Integer orderId, String filePath, HttpServletResponse response) throws Exception;
}
