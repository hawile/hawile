package top.hawile.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import top.hawile.entity.*;
import top.hawile.service.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author Hawile
 */
@Controller
@RequestMapping("/form_input")
public class FormInputController {

    @Resource
    private FormService formService;
    @Resource
    private FileService fileService;
    @Resource
    private FormInputService formInputService;
    @Resource
    private DeptService deptService;
    @Resource
    private LogService logService;

    @RequestMapping()
    //设置填写表单列表界面所需内容
    public String input(Model model, HttpSession session){
        //传入当前用户对象
        model.addAttribute("user",session.getAttribute("user"));
        //传入部门列表
        model.addAttribute("deptList",deptService.list());
        return "form_input";
    }

    @ResponseBody
    @RequestMapping("/list")
    //获取填写表单列表
    public Map<String,Object> inputList(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取表格列表
        List<Form> list = formService.inputList();
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

    @RequestMapping("/form/{pageName}")
    public String Form(@PathVariable(value = "pageName",required = false) String pageName,
                       Model model,HttpSession session){
        //传入当前用户对象
        model.addAttribute("user",session.getAttribute("user"));
        //传入部门列表
        model.addAttribute("deptList",deptService.list());
        pageName = "FormInput/"+pageName;
        return pageName;
    }

    @ResponseBody
    @RequestMapping("/record")
    //获取填写表单记录列表
    public Map<String,Object> recordList(int page, int limit){
        //设置分页格式
        PageHelper.startPage(page,limit);
        //获取填写表单记录列表
        List<FormInput> list = formInputService.list();
        //根据分页格式分页表格列表
        PageInfo<FormInput> rolePageInfo = new PageInfo<>(list);
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
    @PostMapping("/00004")
    public Map<String,Object> form00004(Form00004 form) throws Exception {
        //执行填写操作
        String filePath = formInputService.form00004(form);
        //新建对象
        FormInput formInput = new FormInput();
        //设置值
        formInput.setName(form.getName());
        formInput.setFormName(form.getTitle());
        formInput.setFormNo(deptService.selectId(form.getDeptId()).getFormNo());
        formInput.setFormPath(filePath);
        //执行添加填写表单信息到数据库操作
        formInputService.insert(formInput);
        //将操作写入日志
        logService.log("填写[ "+form.getTitle()+" ]表单","成功");
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //给map对象赋值
        map.put("fileName",filePath);
        map.put("name",form.getTitle());
        return map;
    }

    @ResponseBody
    @PostMapping("/00008")
    //填写<<IT账号开通及变更申请表>>
    public Map<String,Object> form00008(Form00008 form) throws Exception {
        //执行填写操作
        String filePath = formInputService.form00008(form);
        //新建对象
        FormInput formInput = new FormInput();
        //设置值
        formInput.setName(form.getName());
        formInput.setFormName(form.getTitle());
        formInput.setFormNo(deptService.selectId(form.getDeptId()).getFormNo());
        formInput.setFormPath(filePath);
        //执行添加填写表单信息到数据库操作
        formInputService.insert(formInput);
        //将操作写入日志
        logService.log("填写[ "+form.getTitle()+" ]表单","成功");
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //给map对象赋值
        map.put("fileName",filePath);
        map.put("name",form.getTitle());
        return map;
    }

    @ResponseBody
    @PostMapping("/00018")
    //填写<<IT账号开通及变更申请表>>
    public Map<String,Object> form00018(Form00018 form, HttpSession session) throws Exception {
        //获取当前user对象
        User user = (User) session.getAttribute("user");
        //执行填写操作
        String filePath = formInputService.form00018(form);
        //新建对象
        FormInput formInput = new FormInput();
        //设置值
        formInput.setName(user.getName());
        formInput.setFormName(form.getTitle());
        formInput.setFormNo(deptService.selectId(4).getFormNo());
        formInput.setFormPath(filePath);
        //执行添加填写表单信息到数据库操作
        formInputService.insert(formInput);
        //将操作写入日志
        logService.log("填写[ "+form.getTitle()+" ]表单","成功");
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //给map对象赋值
        map.put("fileName",filePath);
        map.put("name",form.getTitle());
        return map;
    }

    @ResponseBody
    @PostMapping("/00203")
    //逻辑安全内部审计、审查报告
    public Map<String,Object> form00203(Form00203 form, HttpSession session) throws Exception {
        //执行填写操作
        String filePath = formInputService.form00203(form);
        //新建对象
        FormInput formInput = new FormInput();
        //获取当前登录用户信息
        User user = (User) session.getAttribute("user");
        //设置值
        formInput.setName(user.getName());
        formInput.setFormName(form.getTitle());
        formInput.setFormNo(deptService.selectId(form.getDeptId()).getFormNo());
        formInput.setFormPath(filePath);
        //执行添加填写表单信息到数据库操作
        formInputService.insert(formInput);
        //将操作写入日志
        logService.log("填写[ "+form.getTitle()+" ]表单","成功");
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //给map对象赋值
        map.put("fileName",filePath);
        map.put("name",form.getTitle());
        return map;
    }


    @ResponseBody
    @GetMapping("/download")
    //下载表单
    public void download(String fileName, String name, HttpServletResponse response) throws Exception {
        //获取当前工作根目录
        String root = System.getProperty("user.dir");
        //获取下载文件路径
        String filePath = root+"/InputForm/"+fileName;
        //判断是否重命名下载文件
        if (name == null) {
            //去除文件名后缀
            name = fileName.substring(0,fileName.lastIndexOf("."));
        }
        //执行下载文件操作
        int state = fileService.download(filePath,name,response);
        if(state == 1){
            logService.log("下载 ["+fileName+" ]文件","成功");
        }else{
            logService.log("下载 ["+fileName+" ]文件","失败");
        }
    }

    @ResponseBody
    @RequestMapping("/form00018_content")
    //Form00018表单自动填写内容
    public Map<String,Object> form00018Content(String type) throws Exception {
        //获取当前工作根目录
        String root = System.getProperty("user.dir");
        //获取配置文件路径
        String cfgPath = root+"/Config/Form00018.cfg";
        //获取配置map对象
        return formInputService.getFrom00018Content(type,cfgPath);
    }
}
