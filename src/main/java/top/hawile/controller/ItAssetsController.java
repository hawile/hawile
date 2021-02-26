package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.ItAssets;
import top.hawile.service.ItAssetsService;
import top.hawile.service.LogService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/it_assets")
public class ItAssetsController {

    @Resource
    private ItAssetsService itAssetsService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置IT固定资产列表所需内容
    public String accNum(Model model, HttpSession session){
        //将登录用户信息传入model
        model.addAttribute("user",session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        //将操作写入日志
        logService.log("查看[ IT固定资产列表 ]","成功");
        return "page/it_assets";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取账号信息列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取账号信息列表
        List<ItAssets> list = itAssetsService.list();
        //根据分页格式分页表格列表
        PageInfo<ItAssets> rolePageInfo = new PageInfo<>(list);
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
    @RequestMapping("/insert")
    public int insert(ItAssets itAssets){
        //封装当前系统时间到对象
        itAssets.setUpdateTime(new Timestamp(new Date().getTime()));
        //执行添加账号信息到数据库操作
        int state = itAssetsService.insert(itAssets);
        //判断是否添加成功
        if (state == 1){
            logService.log("添加[ "+itAssets.getName()+" ]IT固定资产","成功");
            return 1;
        }
        logService.log("添加[ "+itAssets.getName()+" ]IT固定资产","失败");
        return state;
    }

    @ResponseBody
    @RequestMapping("/update")
    public int update(ItAssets itAssets){
        //封装当前系统时间到对象
        itAssets.setUpdateTime(new Timestamp(new Date().getTime()));
        //执行修改账号信息到数据库操作
        int state = itAssetsService.update(itAssets);
        //判断是否修改成功
        if (state == 1){
            logService.log("修改[ "+itAssets.getName()+" ]IT固定资产","成功");
            return 1;
        }
        logService.log("修改[ "+itAssets.getName()+" ]IT固定资产","失败");
        return state;
    }

    @ResponseBody
    @RequestMapping("/delete")
    public int delete(Integer id, String name){
        //执行修改账号信息到数据库操作
        int state = itAssetsService.delete(id);
        //判断是否删除成功
        if (state == 1){
            logService.log("删除[ "+name+" ]IT固定资产","成功");
            return 1;
        }
        logService.log("删除[ "+name+" ]IT固定资产","失败");
        return 0;
    }

    @ResponseBody
    @GetMapping("/export_excel")
    public void exportExcel(String exportId) throws Exception {
        //执行导出Excel操作
        itAssetsService.exportExcel(exportId);
        logService.log("导出账号信息列表","成功");
    }
}
