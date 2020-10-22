package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import top.hawile.entity.FileEntity;
import top.hawile.service.DeptService;
import top.hawile.service.FileService;
import top.hawile.service.LogService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/file")
public class FileController {

    @Resource
    private FileService fileService;
    @Resource
    private DeptService deptService;
    @Resource
    private LogService logService;

    @RequestMapping
    //设置文件信息界面所需内容
    public String form(Model model, HttpSession session){
        //将当前用户对象传入model
        model.addAttribute("user",session.getAttribute("user"));
        //将权限信息存入model
        model.addAttribute("role", session.getAttribute("role"));
        //将部门列表传入model
        model.addAttribute("deptList",deptService.list());
        //将操作写入日志
        logService.log("查看[ 文件信息 ] 列表","成功");
        return "page/file";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取文件列表信息
    public Map<String,Object> list(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取表格列表
        List<FileEntity> list = fileService.list();
        //根据分页格式分页表格列表
        PageInfo<FileEntity> rolePageInfo = new PageInfo<>(list);
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
    //上传文件方法
    public int upload(MultipartFile file, String serial) {
        //获取当前工作根目录
        String root = System.getProperty("user.dir");
        //设置文件上传目录
        String path = root+"/Files/File/";
        try {
            fileService.upload(file,serial,path);
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @ResponseBody
    @RequestMapping("/insert")
    public int insert(FileEntity fileEntity, String exts, Integer size){
        //将当前系统时间封装进对象
        fileEntity.setUpdateTime(new Timestamp(new Date().getTime()));
        //设置浏览文件文件名
        fileEntity.setPath(fileEntity.getSerial()+".pdf");
        //设置下载文件文件名
        fileEntity.setDownload(fileEntity.getSerial()+exts);
        //将文件大小单位转换成KB
        fileEntity.setFileSize(size/1024);
        //执行添加文件到数据库操作
        int state = fileService.insert(fileEntity);
        //判断是否添加成功
        if (state == 1){
            //将操作写入日志
            logService.log("添加[ "+fileEntity.getName()+" ]文件","成功");
            return 1;
        }else if (state == 2){
            //将操作写入日志
            logService.log("添加[ "+fileEntity.getName()+" ]文件","失败");
            return 2;
        }
        //将操作写入日志
        logService.log("添加[ "+fileEntity.getName()+" ]文件","失败");
        return 0;
    }

    @ResponseBody
    @RequestMapping("/update")
    public int update(FileEntity fileEntity, String exts, Integer size){
        //将当前系统时间封装进对象
        fileEntity.setUpdateTime(new Timestamp(new Date().getTime()));
        //设置浏览文件文件名
        fileEntity.setPath(fileEntity.getSerial()+".pdf");
        //判断是否上传office文件
        if (!exts.equals("")){
            //设置下载文件文件名
            fileEntity.setDownload(fileEntity.getSerial()+exts);
            //将文件大小单位转换成KB
            fileEntity.setFileSize(size/1024);
        }
        //执行添加文件到数据库操作
        int state = fileService.update(fileEntity);
        //判断是否修改成功
        if (state == 1){
            //将操作写入日志
            logService.log("修改[ "+fileEntity.getName()+" ]文件","成功");
            return 1;
        }else if (state == 2){
            //将操作写入日志
            logService.log("修改[ "+fileEntity.getName()+" ]文件","失败");
            return 2;
        }
        //将操作写入日志
        logService.log("修改[ "+fileEntity.getName()+" ]文件","失败");
        return 0;
    }

    @ResponseBody
    @RequestMapping("/delete")
    @Transactional
    public int delete(Integer id, String name){
        //执行删除文件到数据库操作
        int state = fileService.delete(id);
        //判断是否删除成功
        if (state == 1){
            //将操作写入日志
            logService.log("删除[ "+name+" ]文件","成功");
            return 1;
        }
        //将操作写入日志
        logService.log("删除[ "+name+" ]文件","失败");
        return 0;
    }

    @RequestMapping("/download")
    public void download(String download, String name, HttpServletResponse response) throws Exception {
        //获取当前工作根目录
        String root = System.getProperty("user.dir");
        //设置下载文件路径
        String filePath = root+"/Files/File/"+download;
        //执行下载文件操作
        fileService.download(filePath,name,response);
        logService.log("下载 ["+name+" ]文件","成功");
    }

    @RequestMapping("/detail")
    public void detail(String path, String name, HttpServletResponse response) {
        //获取当前工作根目录
        String root = System.getProperty("user.dir");
        //设置浏览文件路径
        String filePath = root+"/Files/File/"+path;
        //执行浏览文件操作
        fileService.detail(filePath,response);
        logService.log("查看 ["+name+" ]文件","成功");
    }
}
