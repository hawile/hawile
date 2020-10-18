package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import top.hawile.entity.Form;
import top.hawile.service.*;

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
@RequestMapping("/form")
public class FormController {

    @Resource
    private FormService formService;
    @Resource
    private FileService fileService;
    @Resource
    private DeptService deptService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置表单信息界面所需内容
    public String form(HttpServletRequest request, HttpSession session){
        //将当前用户对象传入request
        request.setAttribute("user",session.getAttribute("user"));
        //将部门列表传入request
        request.setAttribute("deptList",deptService.list());
        //将操作写入日志
        logService.log("查看[ 表单信息 ] 列表","成功");
        return "form";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取表单列表
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取表格列表
        List<Form> list = formService.list();
        //根据分页格式分页表格列表
        PageInfo<Form> rolePageInfo = new PageInfo<>(list);
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
    //上传表单
    public int upload(MultipartFile file, String serial) {
        //获取当前工作根目录
        String root = System.getProperty("user.dir");
        //设置表单上传目录
        String path = root+"/Files/Form/";
        try {
            fileService.upload(file,serial,path);
        }catch (Exception e){
            e.printStackTrace();
        }
        return 1;
    }

    @ResponseBody
    @PostMapping("/insert")
    //添加表单
    public int insert(Form form, String exts, Integer size){
        //将当前系统时间封装进对象
        form.setUpdateTime(new Timestamp(new Date().getTime()));
        //设置浏览表单文件名
        form.setPath(form.getSerial()+".pdf");
        //设置下载表单文件名
        form.setDownload(form.getSerial()+exts);
        //将表单大小单位转换成KB
        form.setFileSize(size/1024);
        //执行添加表单到数据库操作
        int state = formService.insert(form);
        //判断是否添加成功
        if (state == 1){
            //将操作写入日志
            logService.log("添加[ "+form.getName()+" ]表单","成功");
            return 1;
        }else if (state == 2){
            //将操作写入日志
            logService.log("添加[ "+form.getName()+" ]表单","失败");
            return 2;
        }
        //将操作写入日志
        logService.log("添加[ "+form.getName()+" ]表单","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/update")
    //修改表单
    public int update(Form form, String exts, Integer size){
        //将当前系统时间封装进对象
        form.setUpdateTime(new Timestamp(new Date().getTime()));
        //设置浏览表单文件名
        form.setPath(form.getSerial()+".pdf");
        //判断是否上传office文件
        if (!exts.equals("")){
            //设置下载表单文件名
            form.setDownload(form.getSerial()+exts);
            //将表单大小单位转换成KB
            form.setFileSize(size/1024);
        }
        //执行添加表单到数据库操作
        int state = formService.update(form);
        //判断是否修改成功
        if (state == 1){
            //将操作写入日志
            logService.log("修改[ "+form.getName()+" ]表单","成功");
            return 1;
        }else if (state == 2){
            //将操作写入日志
            logService.log("修改[ "+form.getName()+" ]表单","失败");
            return 2;
        }
        //将操作写入日志
        logService.log("修改[ "+form.getName()+" ]表单","失败");
        return 0;
    }

    @ResponseBody
    @PostMapping("/delete")
    @Transactional
    //删除表单
    public int delete(Integer id, String name){
        //执行删除文件到数据库操作
        int state = formService.delete(id);
        //判断是否删除成功
        if (state == 1){
            //将操作写入日志
            logService.log("删除[ "+name+" ]表单","成功");
            return 1;
        }
        //将操作写入日志
        logService.log("删除[ "+name+" ]表单","失败");
        return 0;
    }

    @GetMapping("/download")
    //下载表单
    public void download(String download, String name, HttpServletResponse response) throws Exception {
        //获取当前工作根目录
        String root = System.getProperty("user.dir");
        //设置下载文件路径
        String filePath = root+"/Files/Form/"+download;
        //执行下载文件操作
        fileService.download(filePath,name,response);
        logService.log("下载 ["+name+" ]文件","成功");
    }

    @GetMapping("/detail")
    //浏览表单
    public void detail(String path, String name, HttpServletResponse response) {
        //获取当前工作根目录
        String root = System.getProperty("user.dir");
        //设置浏览文件路径
        String filePath = root + "/Files/Form/" + path;
        //执行浏览文件操作
        fileService.detail(filePath, response);
        logService.log("查看 [" + name + " ]文件", "成功");
    }
}
