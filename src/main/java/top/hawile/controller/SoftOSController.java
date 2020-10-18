package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import top.hawile.entity.SoftOS;
import top.hawile.service.FileService;
import top.hawile.service.LogService;
import top.hawile.service.SoftOSService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/soft_os")
public class SoftOSController {

    @Resource
    private SoftOSService softOSService;
    @Resource
    private FileService fileService;
    @Resource
    private LogService logService;

    //获取当前工作根目录
    private final String root = System.getProperty("user.dir");
    //设置表单上传目录
    private final String path = root+"/Soft/OS/";

    @RequestMapping()
    //设置应用软件列表所需内容
    public String softOS(HttpServletRequest request, HttpSession session){
        //将登录用户信息传入request
        request.setAttribute("user",session.getAttribute("user"));
        logService.log("查看[ 系统下载 ]列表","成功");
        return "soft_os";
    }

    @ResponseBody
    @RequestMapping("/list")
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取账号信息列表
        List<SoftOS> list = softOSService.list();
        //根据分页格式分页表格列表
        PageInfo<SoftOS> rolePageInfo = new PageInfo<>(list);
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
    @RequestMapping("/upload")
    public int upload(MultipartFile file, String fileName){
        try {
            fileService.upload(file,fileName,path);
        }catch (Exception e){
            e.printStackTrace();
        }
        return 1;
    }

    @ResponseBody
    @RequestMapping("/insert")
    public int insert(SoftOS softOS){
        //封装当前系统时间到对象
        softOS.setUpdateTime(new Timestamp(new Date().getTime()));
        int state = softOSService.insert(softOS);
        //判断是否添加成功
        if (state == 1){
            logService.log("添加 ["+softOS.getName()+" ]系统","成功");
            return 1;
        }
        logService.log("添加 ["+softOS.getName()+" ]系统","失败");
        return 0;
    }

    @ResponseBody
    @RequestMapping("/update")
    public int update(SoftOS softOS){
        //封装当前系统时间到对象
        softOS.setUpdateTime(new Timestamp(new Date().getTime()));
        int state = softOSService.update(softOS,path);
        //判断是否修改成功
        if (state == 1){
            logService.log("修改 ["+softOS.getName()+" ]系统","成功");
            return 1;
        }
        logService.log("修改 ["+softOS.getName()+" ]系统","失败");
        return 0;
    }

    @ResponseBody
    @RequestMapping("/delete")
    public int delete(Integer id,String name){
        int state = softOSService.delete(id,path);
        //判断是否删除成功
        if (state == 1){
            logService.log("删除 ["+name+" ]系统","成功");
            return 1;
        }
        logService.log("删除 ["+name+" ]系统","失败");
        return 0;
    }
    @ResponseBody
    @RequestMapping("/download")
    //下载软件
    public void download(String download, String name, HttpServletResponse response) throws Exception {
        //执行下载文件操作
        int state = fileService.download(path+"/"+download,name,response);
        if (state == 1){
            logService.log("下载 ["+name+" ]文件","成功");
        }else{
            logService.log("下载 ["+name+" ]文件","失败");

        }
    }
}
