package top.hawile.service.impl;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import top.hawile.entity.Atm;
import top.hawile.entity.AtmGoods;
import top.hawile.entity.Goods;
import top.hawile.mapper.AtmMapper;
import top.hawile.service.AtmGoodsService;
import top.hawile.service.AtmService;
import top.hawile.service.GoodsService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class AtmServiceImpl implements AtmService {

    @Resource
    private AtmMapper atmMapper;
    @Resource
    private AtmGoodsService atmGoodsService;
    @Resource
    private GoodsService goodsService;

    @Override
    //获取售货机订单信息列表
    public List<Atm> list() {
        return atmMapper.selectAll();
    }

    @Override
    public Atm selectById(Integer id) {
        return atmMapper.selectByPrimaryKey(id);
    }

    @Override
    //添加售货机订单信息
    public int insert(Atm atm,String goodsNum, String goodsNum2) {
        //将当前系统时间封装进对象
        atm.setUpdateTime(new Timestamp(new Date().getTime()));
        //初始化订单信息
        atm.setNumber(0);
        atm.setTotal(0.00);
        atm.setTotal2(0.00);
        atm.setFactoryTotal(0.00);
        atm.setFactoryNumber(0);
        atm.setFactoryProfit(0.00);
        atm.setHeadofficeTotal(0.00);
        atm.setHeadofficeNumber(0);
        atm.setHeadofficeProfit(0.00);
        //执行添加订单信息到数据库操作
        int state = atmMapper.insertSelective(atm);
        //判断是否添加成功
        if (state == 0) return 0;
        //将生产中心商品数量分割成数组
        String[] goodsNumList = goodsNum.split(",");
        //将总部商品数量分割成数组
        String[] goodsNum2List = goodsNum2.split(",");
        //获取商品列表信息
        List<Goods> goodsList = goodsService.list();
        //新建商品对象
        Goods goods;
        //循环执行将生产中心商品数量写入数据库操作
        for (int i = 0; i<goodsNumList.length; i++) {
            //判断该订单商品是否有填写数量
            if (goodsNumList[i].equals("0")||goodsNumList[i].equals("")){
                continue;
            }
            //新建生产中心订单商品对象
            AtmGoods atmGoods = new AtmGoods();
            //将商品列表的商品对象取出
            goods = goodsList.get(i);
            //将商品对象的值传入生产中心订单商品对象
            atmGoods.setName(goods.getName());
            atmGoods.setSpecs(goods.getSpecs());
            atmGoods.setPcs(goods.getPcs());
            atmGoods.setPrice(goods.getPrice());
            atmGoods.setPrice2(goods.getPrice2());
            atmGoods.setPosition("生产中心");
            atmGoods.setRemark(goods.getRemark());
            atmGoods.setNumber(Integer.valueOf(goodsNumList[i]));
            atmGoods.setTotal(atmGoods.getPrice()*atmGoods.getNumber());
            atmGoods.setTotal2(atmGoods.getPrice2()*atmGoods.getNumber());
            atmGoods.setOrderId(atm.getId());
            //执行添加订单商品信息到数据库操作
            atmGoodsService.insert(atmGoods);
            //将生产中心商品数量添加进订单信息
            atm.setFactoryNumber(atm.getFactoryNumber()+Integer.parseInt(goodsNumList[i]));
            //将生产中心商品总额添加进订单信息
            atm.setFactoryTotal(atm.getFactoryTotal()+atmGoods.getPrice()*atmGoods.getNumber());
            //将生产中心商品利润添加进订单信息
            atm.setFactoryProfit(atm.getFactoryProfit()+atmGoods.getTotal()-atmGoods.getTotal2());
        }
        //循环执行将总部商品数量写入数据库操作
        for (int i = 0; i<goodsNum2List.length; i++) {
            //判断该订单商品是否有填写数量
            if (goodsNum2List[i].equals("0")||goodsNum2List[i].equals("")){
                continue;
            }
            //新建总部订单商品对象
            AtmGoods atmGoods = new AtmGoods();
            //将商品列表的商品对象取出
            goods = goodsList.get(i);
            //将商品对象的值传入总部订单商品对象
            atmGoods.setName(goods.getName());
            atmGoods.setSpecs(goods.getSpecs());
            atmGoods.setPcs(goods.getPcs());
            atmGoods.setPrice(goods.getPrice());
            atmGoods.setPrice2(goods.getPrice2());
            atmGoods.setPosition("总部");
            atmGoods.setRemark(goods.getRemark());
            atmGoods.setNumber(Integer.valueOf(goodsNum2List[i]));
            atmGoods.setTotal(atmGoods.getPrice()*atmGoods.getNumber());
            atmGoods.setTotal2(atmGoods.getPrice2()*atmGoods.getNumber());
            atmGoods.setOrderId(atm.getId());
            //执行添加订单商品信息到数据库操作
            atmGoodsService.insert(atmGoods);
            //将总部商品数量添加进订单信息
            atm.setHeadofficeNumber(atm.getHeadofficeNumber()+Integer.parseInt(goodsNum2List[i]));
            //将总部商品总额添加进订单信息
            atm.setHeadofficeTotal(atm.getHeadofficeTotal()+atmGoods.getPrice()*atmGoods.getNumber());
            //将总部商品利润添加进订单信息
            atm.setHeadofficeProfit(atm.getHeadofficeProfit()+atmGoods.getTotal()-atmGoods.getTotal2());
        }
        //将订单总数量添加进订单信息
        atm.setNumber(atm.getFactoryNumber()+atm.getHeadofficeNumber());
        //将订单总额添加进订单信息
        atm.setTotal(atm.getFactoryTotal()+atm.getHeadofficeTotal());
        //将订单进价添加进订单信息
        atm.setTotal2(atm.getTotal()-atm.getFactoryProfit()-atm.getHeadofficeProfit());
        atmMapper.updateByPrimaryKeySelective(atm);
        return 1;
    }

    @Override
    //修改售货机订单信息
    public int update(Atm atm,String goodsNum, String goodsNum2) {
        return atmMapper.updateByPrimaryKeySelective(atm);
    }

    @Override
    //删除售货机订单信息
    public int delete(Integer id) {
        //删除订单商品信息
         atmGoodsService.deleteByOrderId(id);
         //删除订单信息
        int state = atmMapper.deleteByPrimaryKey(id);
        if (state == 1){
            return 1;
        }
        return 0;
    }

    @Override
    //导出售货机订单信息到Excel
    public void exportExcel(Integer orderId,String filePath, HttpServletResponse response) throws Exception {
        //获取当前时间
        Date date=new Date();
        //格式化文件名时间
        SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
        //格式化时间
        SimpleDateFormat fm = new SimpleDateFormat("yyyy.MM.dd");
        //获取当前ID的订单信息
        Atm atm = atmMapper.selectByPrimaryKey(orderId);
        //获取当前ID的商品列表
        List<AtmGoods> atmGoodsList=atmGoodsService.selectByOrderId(orderId);
        //创建Excel文件的输入流对象
        FileInputStream in=new FileInputStream(filePath);
        //获取XSSFWorkbook对象
        XSSFWorkbook wb = new XSSFWorkbook(in);
        in.close();
        //获取创建XSSFSheet对象
        XSSFSheet sheet = wb.getSheetAt(0);
        String title = atm.getDate().replace("-", "");
        title = title.substring(0,4)+"年"+title.substring(4,6)+"月"+title.substring(6)+"日商品明细表";
        XSSFRow row=sheet.getRow(1);
        row.getCell(0).setCellValue(title);	//设置表格标题
        row=sheet.getRow(2);
        row.getCell(1).setCellValue(atm.getState());	//设置状态
        row.getCell(5).setCellValue(fm.format(date));	//设置生成时间
        row=sheet.getRow(3);
        row.getCell(1).setCellValue(atm.getTotal());	//设置销售总额
        row.getCell(3).setCellValue(atm.getNumber());	//设置销售总数
        row.getCell(5).setCellValue(atm.getFactoryProfit()+atm.getHeadofficeProfit());	//设置销售利润
        row=sheet.getRow(4);
        row.getCell(1).setCellValue(atm.getFactoryTotal());		//设置工厂销售总额
        row.getCell(3).setCellValue(atm.getFactoryNumber());	//设置工厂销售总数
        row.getCell(5).setCellValue(atm.getFactoryProfit());	//设置工厂销售利润
        row=sheet.getRow(5);
        row.getCell(1).setCellValue(atm.getHeadofficeTotal());	//设置总部销售总额
        row.getCell(3).setCellValue(atm.getHeadofficeNumber());	//设置总部销售总数
        row.getCell(5).setCellValue(atm.getHeadofficeProfit());	//设置总部销售利润
        for (int i = 0; i < atmGoodsList.size(); i++) {
            row = sheet.getRow(i+9);
            row.getCell(0).setCellValue(atmGoodsList.get(i).getName());		//商品名称
            row.getCell(1).setCellValue(atmGoodsList.get(i).getPrice());	//商品单价
            row.getCell(2).setCellValue(atmGoodsList.get(i).getNumber());	//商品数量
            row.getCell(3).setCellValue(atmGoodsList.get(i).getNumber()*atmGoodsList.get(i).getPrice());	//商品总价
            row.getCell(4).setCellValue(atmGoodsList.get(i).getPosition());	//商品位置
            row.getCell(5).setCellValue(atmGoodsList.get(i).getRemark());	//商品备注
        }
        //定义下载表单文件名
        String fileName=fmt.format(date)+"商品明细表.xlsx";
        //转换编码格式
        fileName=new String(fileName.getBytes(),"ISO8859-1");
        //输出Excel文件
        OutputStream output=response.getOutputStream();
        response.reset(); response.setHeader("Content-disposition","attachment; filename="+fileName);
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        wb.write(output);
        wb.close();
        output.close();
    }
}
