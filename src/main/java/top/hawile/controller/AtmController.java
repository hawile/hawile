package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Atm;
import top.hawile.entity.Goods;
import top.hawile.service.AtmGoodsService;
import top.hawile.service.AtmService;
import top.hawile.service.GoodsService;
import top.hawile.service.LogService;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author Hawile
 */

@Controller
@RequestMapping("/atm")
public class AtmController {

    @Resource
    private AtmService atmService;
    @Resource
    private AtmGoodsService atmGoodsService;
    @Resource
    private GoodsService goodsService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置订单信息列表界面所需内容
    public String atm(HttpServletRequest request, HttpSession session){
        //将登录用户信息传入request
        request.setAttribute("user",session.getAttribute("user"));
        //将商品信息列表传入request
        request.setAttribute("goodsList",goodsService.list());
        //将操作写入日志
        logService.log("查看[ 售货机订单信息列表 ]","成功");
        return "atm";
    }

    @RequestMapping("/goods")
    //设置商品信息列表界面所需内容
    public String goods(HttpServletRequest request, HttpSession session){
        //将登录用户信息传入request
        request.setAttribute("user",session.getAttribute("user"));
        //将商品信息列表传入request
        request.setAttribute("goodsList",goodsService.list());
        //将操作写入日志
        logService.log("查看[ 售货机商品信息列表 ]","成功");
        return "goods";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取订单信息列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取账号信息列表
        List<Atm> list = atmService.list();
        //根据分页格式分页表格列表
        PageInfo<Atm> rolePageInfo = new PageInfo<>(list);
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //设置Json格式
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",rolePageInfo.getTotal());
        map.put("data",rolePageInfo.getList());
        return map;
    }

    @ResponseBody
    @RequestMapping("/goods/list")
    //获取商品信息列表
    public Map<String,Object> goodsList(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取账号信息列表
        List<Goods> list = goodsService.list();
        //根据分页格式分页表格列表
        PageInfo<Goods> rolePageInfo = new PageInfo<>(list);
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //设置Json格式
        map.put("code", 0);
        map.put("msg", "");
        map.put("count",rolePageInfo.getTotal());
        map.put("data",rolePageInfo.getList());
        return map;
    }

    @RequestMapping("/order")
    //获取特定订单详细信息
    public String order(Integer id, HttpServletRequest request){
        //将特定售货机订单信息传入request
        request.setAttribute("atm",atmService.selectById(id));
        //将特定售货机订单商品信息列表传入request
        request.setAttribute("atmGoodsList",atmGoodsService.selectByOrderId(id));
        return "atm_order";
    }

    @ResponseBody
    @PostMapping("/insert")
    //添加订单
    public int insert(Atm atm,String goodsNum, String goodsNum2){
        //封装当前系统时间到对象
        atm.setUpdateTime(new Timestamp(new Date().getTime()));
        //执行添加订单信息到数据库操作
        int state = atmService.insert(atm,goodsNum,goodsNum2);
        //判断是否添加成功
        if (state == 1){
            //将操作写入日志
            logService.log("添加 ["+atm.getName()+" ]订单信息","成功");
            return 1;
        }
        //将操作写入日志
        logService.log("添加 ["+atm.getName()+" ]订单信息","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/delete")
    //删除订单
    public int delete(Integer id, String name){
        //执行删除订单信息到数据库操作
        int state = atmService.delete(id);
        //判断是否删除成功
        if (state == 1){
            //将操作写入日志
            logService.log("删除 ["+name+" ]订单信息","成功");
            return 1;
        }
        //将操作写入日志
        logService.log("删除 ["+name+" ]订单信息","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/goods/insert")
    //添加商品
    public int goodsInsert(Goods goods){
        //执行添加商品到数据库操作
        int state = goodsService.insert(goods);
        //判断是否添加成功
        if (state == 1){
            //将操作写入日志
            logService.log("添加[ "+goods.getName()+" ]商品","成功");
            return 1;
        }
        //将操作写入日志
        logService.log("添加[ "+goods.getName()+" ]商品","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/goods/update")
    //修改商品
    public int goodsUpdate(Goods goods){
        //执行添加商品到数据库操作
        int state = goodsService.update(goods);
        //判断是否修改成功
        if (state == 1){
            //将操作写入日志
            logService.log("修改[ "+goods.getName()+" ]商品","成功");
            return 1;
        }
        //将操作写入日志
        logService.log("修改[ "+goods.getName()+" ]商品","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/goods/delete")
    //删除商品
    public int goodsDelete(Integer id,String name){
        //执行添加商品到数据库操作
        int state = goodsService.delete(id);
        //判断是否删除成功
        if (state == 1){
            //将操作写入日志
            logService.log("删除[ "+name+" ]商品","成功");
            return 1;
        }
        //将操作写入日志
        logService.log("删除[ "+name+" ]商品","失败");
        return 0;
    }

    @GetMapping("/export")
    //导出订单
    public void exportExcel(Integer orderId, HttpServletResponse response) throws Exception {
        //设置excel模板文件路径
        String filePath = System.getProperty("user.dir")+"/Excel/atmTemplate.xlsx";
        //导出Excel到本地
        atmService.exportExcel(orderId,filePath,response);
    }
}
