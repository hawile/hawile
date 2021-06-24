package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawile.entity.Csr;
import top.hawile.service.CsrService;
import top.hawile.service.FileService;
import top.hawile.service.LogService;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.*;

@Controller
@RequestMapping("/csr")
public class CsrController {

    @Resource
    private CsrService csrService;
    @Resource
    private FileService fileService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置客户账号信息列表所需内容
    public String csr(Model model, HttpSession session){
        //将登录用户信息传入model
        model.addAttribute("user",session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        //将操作写入日志
        logService.log("查看[ 客户账号信息列表 ]","成功");
        return "page/csr";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取客户账号信息列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取客户账号信息列表
        List<Csr> list = csrService.list();
        //根据分页格式分页表格列表
        PageInfo<Csr> rolePageInfo = new PageInfo<>(list);
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
    @PostMapping("/insert")
    public int insert(Csr csr){
        //封装当前系统时间到对象
        csr.setUpdateTime(new Timestamp(new Date().getTime()));
        //执行添加客户账号信息到数据库操作
        int state = csrService.insert(csr);
        //判断是否添加成功
        if (state == 1){
            logService.log("添加[ "+csr.getName()+" ]客户账号信息","成功");
            return 1;
        }
        logService.log("添加[ "+csr.getName()+" ]客户账号信息","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/update")
    public int update(Csr csr){
        //封装当前系统时间到对象
        csr.setUpdateTime(new Timestamp(new Date().getTime()));
        //执行修改客户账号信息到数据库操作
        int state = csrService.update(csr);
        //判断是否修改成功
        if (state == 1){
            logService.log("修改[ "+csr.getName()+" ]客户账号信息","成功");
            return 1;
        }
        logService.log("修改[ "+csr.getName()+" ]客户账号信息","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/delete")
    public int delete(Integer id, String name){
        //执行修改客户账号信息到数据库操作
        int state = csrService.delete(id);
        //判断是否删除成功
        if (state == 1){
            logService.log("删除[ "+name+" ]客户账号信息","成功");
            return 1;
        }
        logService.log("删除[ "+name+" ]客户账号信息","失败");
        return 0;
    }

    @ResponseBody
    @RequestMapping("/export")
    public void print(HttpServletResponse response, int state) throws Exception {
        //获取当前工作根目录
        String root = System.getProperty("user.dir");
        //填写客户账号信息模版
        String fileName = csrService.print(root+"/Excel/CSRPrint.xlsx",state);
        if (fileName == null){
            logService.log("打印客户账号信息列表", "失败");	//将操作写入日志
        }
        //设置下载客户账号信息列表路径
        String csrPath = root+"/FormInput/"+fileName;
        //下载客户账号信息列表
        fileService.download(csrPath,"客户账号信息列表",response);
        logService.log("打印客户账号信息列表", "成功");	//将操作写入日志
    }

    @ResponseBody
    @RequestMapping("/update_many_state")
    //批量修改客户账号状态
    public int updateManyState(String state, String ids, String remark){
        String[] idsArray = ids.split(",");
        List<String> idList = new ArrayList<>(Arrays.asList(idsArray));
        int s = csrService.updateManyState(state,idList,remark);
        if (s >0){
            logService.log("批量修改客户账号状态", "成功");	//将操作写入日志
        } else {
            logService.log("批量修改客户账号状态", "失败");	//将操作写入日志
        }
        return s;
    }

    @ResponseBody
    @RequestMapping("/delete_many")
    //批量删除客户账号
    public int deleteMany(String ids){
        System.out.println(ids);
        String[] idsArray = ids.split(",");
        List<String> idList = new ArrayList<>(Arrays.asList(idsArray));
        int state = csrService.deleteMany(idList);
        if (state >0){
            logService.log("批量删除客户账号", "成功");	//将操作写入日志
        } else {
            logService.log("批量删除客户账号", "失败");	//将操作写入日志
        }
        return state;
    }

}