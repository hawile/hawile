package top.hawile.service.impl;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import top.hawile.entity.*;
import top.hawile.entity.form.Form00004;
import top.hawile.entity.form.Form00008;
import top.hawile.entity.form.Form00018;
import top.hawile.entity.form.Form00203;
import top.hawile.mapper.FormInputMapper;
import top.hawile.service.DeptService;
import top.hawile.service.FormInputService;
import javax.annotation.Resource;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FormInputServiceImpl implements FormInputService {

    @Resource
    private FormInputMapper formInputMapper;
    @Resource
    private DeptService deptService;

    private final String root = System.getProperty("user.dir");

    @Override
    public List<FormInput> list() {
        return formInputMapper.selectAll();
    }

    @Override
    //根据ID获取填写表单信息
    public FormInput selectId(Integer id) {
        return formInputMapper.selectByPrimaryKey(id);
    }

    @Override
    //添加填写表单信息
    public int insert(FormInput formInput) {
        return formInputMapper.insertSelective(formInput);
    }

    @Override
    //修改填写表单信息
    public int update(FormInput formInput) {
        return formInputMapper.updateByPrimaryKeySelective(formInput);
    }

    @Override
    //删除填写表单信息
    public int delete(Integer id) {
        return formInputMapper.deleteByPrimaryKey(id);
    }

    @Override
    //IT设备安装及变更申请表
    public String form00004(Form00004 form) throws Exception {
        //获取部门信息
        Department dept = deptService.selectId(form.getDeptId());
        //获取当前系统时间
        Date dt=new Date();
        //格式化报告填写时间
        SimpleDateFormat fm = new SimpleDateFormat("yyyy 年 MM 月 dd 日");
        //格式化文件名时间
        SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
        //格式化当前系统时间
        String dateTime=fmt.format(dt);
        //创建Excel文件的输入流对象
        FileInputStream in=new FileInputStream(root+"/Excel/Form00004.xlsx");
        //根据模板创建excel工作簿
        XSSFWorkbook wb=new XSSFWorkbook(in);
        in.close();
        //获取创建的工作簿第一页
        XSSFSheet sheet=wb.getSheetAt(0);
        //给指定的sheet命名
        wb.setSheetName(0,"IT设备安装及变更申请表");
        //设置表单编码
        CellIn(sheet,1,0,formNo(dept));
        //设置申请时间
        CellIn(sheet,1,5,fm.format(dt));
        //设置申请人
        CellIn(sheet,2,1,form.getName());
        //设置部门
        CellIn(sheet,2,5,dept.getDeptName());
        //设置申请类型及操作时间
        if(form.getApplyType()==1)CellIn(sheet,3,1,"R"); else CellIn(sheet,3,1,"T");
        CellIn(sheet,3,5,form.getBeginDate());
        if(form.getApplyType()==2)CellIn(sheet,4,1,"R"); else CellIn(sheet,4,1,"T");
        CellIn(sheet,4,5,form.getEndDate());
        //设置申请原因
        CellIn(sheet,5,1,form.getCause());
        //设置设备名称
        if(form.getDeviceName1()==1)CellIn(sheet,6,1,"R"); else CellIn(sheet,6,1,"T");
        if(form.getDeviceName2()==1)CellIn(sheet,6,3,"R"); else CellIn(sheet,6,3,"T");
        if(form.getDeviceName3()==1)CellIn(sheet,6,5,"R"); else CellIn(sheet,6,5,"T");
        if(form.getDeviceName4()==1)CellIn(sheet,7,1,"R"); else CellIn(sheet,7,1,"T");
        if(form.getDeviceName5()==1)CellIn(sheet,7,3,"R"); else CellIn(sheet,7,3,"T");
        if(form.getDeviceName6()==1)CellIn(sheet,7,5,"R"); else CellIn(sheet,7,5,"T");
        if(form.getDeviceName7()==1)CellIn(sheet,8,1,"R"); else CellIn(sheet,8,1,"T");
        if(form.getDeviceName8()==1)CellIn(sheet,8,3,"R"); else CellIn(sheet,8,3,"T");
        if(form.getDeviceName9()==1)CellIn(sheet,8,5,"R"); else CellIn(sheet,8,5,"T");
        if(form.getDeviceName10()==1)CellIn(sheet,9,1,"R"); else CellIn(sheet,9,1,"T");
        if(form.getDeviceName11()==1)CellIn(sheet,9,3,"R"); else CellIn(sheet,9,3,"T");
        if(form.getDeviceName12()==1)CellIn(sheet,9,5,"R"); else CellIn(sheet,9,5,"T");
        if(form.getDeviceName13()==1)CellIn(sheet,10,1,"R"); else CellIn(sheet,10,1,"T");
        if(form.getDeviceName14()==1)CellIn(sheet,10,3,"R"); else CellIn(sheet,10,3,"T");
        if(form.getDeviceName15()==1)CellIn(sheet,10,5,"R"); else CellIn(sheet,10,5,"T");
        if(form.getDeviceName16()==1)CellIn(sheet,11,1,"R"); else CellIn(sheet,11,1,"T");
        if(!form.getDeviceName17().equals("")) {
            CellIn(sheet,11,3,"R");
            CellIn(sheet,11,4,"其他："+form.getDeviceName17());
        } else CellIn(sheet,11,3,"T");
        //设置设备编号
        CellIn(sheet,12,1,form.getDeviceSerial());
        //设置备注
        CellIn(sheet,13,1,form.getRemark());
        //定义下载表单文件名
        String fileName = "Form"+dateTime+".xlsx";
        //转换编码格式
        fileName=new String(fileName.getBytes(),"ISO8859-1");
        //输出Excel文件
        File folder=new File(root,"InputForm");
        if(!folder.exists())folder.mkdirs();
        OutputStream output=new FileOutputStream(new File(folder, fileName));
        wb.write(output);
        wb.close();
        output.close();
        return fileName;
    }

    @Override
    //IT账号开通及变更申请表
    public String form00008(Form00008 form) throws Exception {
        //获取部门信息
        Department dept = deptService.selectId(form.getDeptId());
        //获取当前系统时间
        Date dt=new Date();
        //格式化报告填写时间
        SimpleDateFormat fm = new SimpleDateFormat("yyyy 年 MM 月 dd 日");
        //格式化文件名时间
        SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
        //格式化当前时间
        String dateTime=fmt.format(dt);
        //创建Excel文件的输入流对象
        FileInputStream in=new FileInputStream(root+"/Excel/Form00008.xlsx");
        //根据模板创建excel工作簿
        XSSFWorkbook wb=new XSSFWorkbook(in);
        in.close();
        //获取创建的工作簿第一页
        XSSFSheet sheet=wb.getSheetAt(0);
        //给指定的sheet命名
        wb.setSheetName(0,"IT账号开通变更申请表");
        //设置表单编码
        CellIn(sheet,1,0,formNo(dept));
        //设置申请日期
        CellIn(sheet,1,7,fm.format(dt));
        //设置姓名
        CellIn(sheet,2,1,form.getName());
        //设置职务
        CellIn(sheet,2,7,form.getJobName());
        //设置部门
        CellIn(sheet,3,1,dept.getDeptName());
        //设置申请类型
        if(form.getApplyType1()==1)CellIn(sheet,4,1,"R"); else CellIn(sheet,4,1,"T");
        if(form.getApplyType2()==1)CellIn(sheet,4,3,"R"); else CellIn(sheet,4,3,"T");
        if(form.getApplyType3()==1)CellIn(sheet,4,5,"R"); else CellIn(sheet,4,5,"T");
        if(form.getApplyType4()==1)CellIn(sheet,4,7,"R"); else CellIn(sheet,4,7,"T");
        if(form.getApplyType5()==1)CellIn(sheet,5,1,"R"); else CellIn(sheet,5,1,"T");
        if(form.getApplyType6()==1)CellIn(sheet,5,3,"R"); else CellIn(sheet,5,3,"T");
        if(form.getApplyType7()==1)CellIn(sheet,5,5,"R"); else CellIn(sheet,5,5,"T");
        if(form.getApplyType8()==1)CellIn(sheet,5,7,"R"); else CellIn(sheet,5,7,"T");
        if(form.getApplyType9()!=null&& !form.getApplyType9().equals("")) {
            CellIn(sheet,6,1,"R");
            CellIn(sheet,6,2,"其他："+form.getApplyType9());
        }else CellIn(sheet,6,1,"T");
        //设置账号类型
        if(form.getAccountType1()==1)CellIn(sheet,7,1,"R"); else CellIn(sheet,7,1,"T");
        if(form.getAccountType2()==1)CellIn(sheet,7,5,"R"); else CellIn(sheet,7,5,"T");
        if(form.getAccountType3()==1)CellIn(sheet,8,1,"R"); else CellIn(sheet,8,1,"T");
        if(form.getAccountType4()==1)CellIn(sheet,8,5,"R"); else CellIn(sheet,8,5,"T");
        if(form.getAccountType5()==1)CellIn(sheet,9,1,"R"); else CellIn(sheet,9,1,"T");
        if(form.getAccountType6()==1)CellIn(sheet,9,5,"R"); else CellIn(sheet,9,5,"T");
        if(form.getAccountType7()==1)CellIn(sheet,10,1,"R"); else CellIn(sheet,10,1,"T");
        if(form.getAccountType8()==1)CellIn(sheet,10,5,"R"); else CellIn(sheet,10,5,"T");
        if(form.getAccountType9()!=null&& !form.getAccountType9().equals("")) {
            CellIn(sheet,11,1,"R");
            CellIn(sheet,11,2,"其他："+form.getAccountType9());
        }else CellIn(sheet,11,1,"T");
        //设置申请原因
        CellIn(sheet,12,1,form.getCause());
        //设置变更内容
        CellIn(sheet,13,1,form.getChangeContent());
        //设置备注
        CellIn(sheet,14,1,form.getRemark());
        //定义下载表单文件名
        String fileName = "Form"+dateTime+".xlsx";
        //转换编码格式
        fileName=new String(fileName.getBytes(),"ISO8859-1");
        //输出Excel文件
        File folder=new File(root,"InputForm");
        if(!folder.exists())folder.mkdirs();
        OutputStream output=new FileOutputStream(new File(folder, fileName));
        wb.write(output);
        wb.close();
        output.close();
        return fileName;

    }

    @Override
    //逻辑安全内部审计、审查报告
    public String form00018(Form00018 form) throws Exception {
        //获取部门信息
        Department dept = deptService.selectId(4);
        //获取当前系统时间
        Date dt=new Date();
        //格式化文件名时间
        SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
        //格式化当前时间
        String dateTime=fmt.format(dt);
        //创建Excel文件的输入流对象
        FileInputStream in=new FileInputStream(root+"/Excel/Form00018.xlsx");
        //根据模板创建excel工作簿
        XSSFWorkbook wb=new XSSFWorkbook(in);
        //关闭输入流对象
        in.close();
        //获取创建的工作簿第一页
        XSSFSheet sheet=wb.getSheetAt(0);
        //给指定的sheet命名
        wb.setSheetName(0,"逻辑安全内部审计、审查报告");
        CellIn(sheet,1,0,formNo(dept));			//设置表单编码
        CellIn(sheet,1,9,form.getBGH());		//设置报告号
        CellIn(sheet,1,11,form.getRQ());		//设置报告日期
        CellIn(sheet,3,9,form.getSJBM());	//设置受检部门
        CellIn(sheet,4,9,form.getJCSQF());	//设置检查授权方
        CellIn(sheet,5,9,form.getJCTZRQ());	//设置检查通知日期
        CellIn(sheet,6,9,form.getBTZRXM());	//设置被通知人姓名/ID号
        CellIn(sheet,7,9,form.getJCLX());	//设置检查类型及范围
        CellIn(sheet,8,9,form.getJCRQ());	//设置检查日期/时间/周期
        CellIn(sheet,9,9,form.getJCY());		//设置检查员及报告人姓名
        //设置结果一
        if(form.getJG()==1){
            CellIn(sheet,11,0,"R");
            CellIn(sheet,12,0,"T");
            CellIn(sheet,12,2,"T");
            CellIn(sheet,12,4,"T");
            CellIn(sheet,12,6,"T");
        } else if(form.getJG()==2){
            CellIn(sheet,11,0,"T");
            CellIn(sheet,12,0,"R");
            if(form.getJG_1()==1){
                CellIn(sheet,12,2,"R");
                CellIn(sheet,12,4,"T");
                CellIn(sheet,12,6,"T");
            }else if(form.getJG_1()==2){
                CellIn(sheet,12,2,"T");
                CellIn(sheet,12,4,"R");
                CellIn(sheet,12,6,"T");
            }else if(form.getJG_1()==3){
                CellIn(sheet,12,2,"T");
                CellIn(sheet,12,4,"T");
                CellIn(sheet,12,6,"R");
            }
        }
        CellIn(sheet,13,9,form.getJCHDMS());	//设置检查活动描述
        CellIn(sheet,14,9,form.getSHWJ());	//设置审核文件
        CellIn(sheet,15,9,form.getQDQY());	//设置缺点区域
        CellIn(sheet,16,9,form.getGJCS());	//设置改进措施和时间计划
        //设置结果二
        if(form.getJG1()==1){
            CellIn(sheet,18,0,"R");
            CellIn(sheet,19,0,"T");
            CellIn(sheet,21,0,"T");
        } else if(form.getJG1()==2){
            CellIn(sheet,18,0,"T");
            CellIn(sheet,19,0,"R");
            CellIn(sheet,21,0,"T");
            CellIn(sheet,19,4,form.getJG2A());
            CellIn(sheet,20,1,form.getJG2B());
            CellIn(sheet,20,7,form.getJG2C());
        } else if(form.getJG1()==3){
            CellIn(sheet,18,0,"T");
            CellIn(sheet,19,0,"T");
            CellIn(sheet,21,0,"R");
            CellIn(sheet,21,2,form.getJG3A());
        }

        String fileName="Form"+dateTime+".xlsx";	//定义下载表单文件名
        fileName=new String(fileName.getBytes(),"ISO8859-1");	//转换编码格式
        //输出Excel文件
        File folder=new File(root,"InputForm");
        if(!folder.exists())folder.mkdirs();
        OutputStream output=new FileOutputStream(new File(folder, fileName));
        wb.write(output);
        wb.close();
        output.close();
        return fileName;
    }

    @Override
    //机房进出申请表
    public String form00203(Form00203 form) throws Exception {
        //获取部门信息
        Department dept = deptService.selectId(form.getDeptId());
        //获取当前系统时间
        Date dt=new Date();
        //格式化报告填写时间
        SimpleDateFormat fm = new SimpleDateFormat("yyyy 年 MM 月 dd 日");
        //格式化文件名时间
        SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
        //格式化当前系统时间
        String dateTime=fmt.format(dt);
        //创建Excel文件的输入流对象
        FileInputStream in=new FileInputStream(root+"/Excel/Form00203.xlsx");
        //根据模板创建excel工作簿
        XSSFWorkbook wb=new XSSFWorkbook(in);
        in.close();
        //获取创建的工作簿第一页
        XSSFSheet sheet=wb.getSheetAt(0);
        //给指定的sheet命名
        wb.setSheetName(0,"机房进出申请表");
        //设置表单编码
        CellIn(sheet,1,0,formNo(dept));
        //设置申请日期
        CellIn(sheet,1,4,fm.format(dt));
        //设置申请部门
        CellIn(sheet,2,1,dept.getDeptName());
        //设置进出日期
        CellIn(sheet,2,4,form.getDate());
        //设置进出人员一
        CellIn(sheet,4,1,form.getName1());
        CellIn(sheet,4,2,form.getDept1());
        CellIn(sheet,4,3,form.getNum1());
        CellIn(sheet,4,5,form.getTel1());
        //设置进出人员二
        CellIn(sheet,5,1,form.getName2());
        CellIn(sheet,5,2,form.getDept2());
        CellIn(sheet,5,3,form.getNum2());
        CellIn(sheet,5,5,form.getTel2());
        //设置进出人员三
        CellIn(sheet,6,1,form.getName3());
        CellIn(sheet,6,2,form.getDept3());
        CellIn(sheet,6,3,form.getNum3());
        CellIn(sheet,6,5,form.getTel3());
        //设置进出人员四
        CellIn(sheet,7,1,form.getName4());
        CellIn(sheet,7,2,form.getDept4());
        CellIn(sheet,7,3,form.getNum4());
        CellIn(sheet,7,5,form.getTel4());
        //设置进出人员五
        CellIn(sheet,8,1,form.getName5());
        CellIn(sheet,8,2,form.getDept5());
        CellIn(sheet,8,3,form.getNum5());
        CellIn(sheet,8,5,form.getTel5());
        //设置陪同人员一
        CellIn(sheet,12,1,form.getName11());
        CellIn(sheet,12,3,form.getDept11());
        //设置陪同人员二
        CellIn(sheet,13,1,form.getName12());
        CellIn(sheet,13,3,form.getDept12());
        //设置陪同人员三
        CellIn(sheet,14,1,form.getName13());
        CellIn(sheet,14,3,form.getDept13());
        //设置进出物品
        CellIn(sheet,15,1,form.getGoods());
        //设置进出原因
        CellIn(sheet,16,1,form.getCause());
        //设置备注
        CellIn(sheet,17,1,form.getRemark());
        //定义下载表单文件名
        String fileName = "Form"+dateTime+".xlsx";
        //输出Excel文件
        File folder=new File(root,"InputForm");
        if(!folder.exists()) {
            folder.mkdirs();
        }
        OutputStream output=new FileOutputStream(new File(folder, fileName));
        wb.write(output);
        wb.close();
        output.close();
        return fileName;
    }

    //获取文件填写编码
    public String formNo(Department dept) {
        //将部门ID转换成String类型
        String deptId=String.valueOf(dept.getDeptId());
        //将部门ID转换成两位数
        if(deptId.length()==1)deptId="0"+deptId;
        //获取当前时间
        Date Date=new Date();
        //格式化时间
        SimpleDateFormat formfmt = new SimpleDateFormat("yyyy");
        String nowYear=formfmt.format(Date);
        //判断部门编码是否为空
        if(dept.getFormNo() != null){
            //获取部门文件编码
            String number = String.valueOf(dept.getFormNo());
            //获取部门文件编码中的年份
            String year = number.substring(0,4);
            //判断当前年份是否大于数据库年份
            if(nowYear.compareTo(year) > 0) {
                //初始化文件编码
                dept.setFormNo(Integer.valueOf(nowYear+deptId+"0001"));
            } else {
                //部门文件编码+1
                dept.setFormNo(dept.getFormNo()+1);
            }
        }else {
            //初始化文件编码
            dept.setFormNo(Integer.valueOf(nowYear+deptId+"0001"));
        }
        //执行修改部门信息到数据库操作
        deptService.update(dept);
        return "No."+dept.getFormNo();

    }
    @Override
    //Form00018自动填写内容
    public Map<String,Object> getFrom00018Content(String type, String cfgPath) throws Exception {
        //新建Map对象
        Map<String,Object> map = new HashMap<>();
        //获取配置文件
        File cfgFile = new File(cfgPath);
        // 建立一个输入流对象reader
        InputStreamReader reader = new InputStreamReader(new FileInputStream(cfgFile), StandardCharsets.UTF_8);
        // 建立一个对象，它把文件内容转成计算机能读懂的语言
        BufferedReader br = new BufferedReader(reader);
        String line;
        StringBuilder Content;
        do {
            // 一次读入一行数据
            line = br.readLine();
            if(type.equals("访问控制")&&line!=null) {
                if(line.equals("[Begin:访问控制]")) {
                    line=br.readLine();
                    while(!line.equals("[End:访问控制]")) {
                        switch (line) {
                            case "[受检部门]":
                                line = br.readLine();
                                map.put("SJBM", line);
                                break;
                            case "[检查授权方]":
                                line = br.readLine();
                                map.put("JCSQF", line);
                                break;
                            case "[被通知人姓名/ID号]":
                                line = br.readLine();
                                map.put("BTZRXM", line);
                                break;
                            case "[检查员及报告人姓名]":
                                line = br.readLine();
                                map.put("JCY", line);
                                break;
                            case "[Begin:检查活动描述]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:检查活动描述]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("JCHDMS", Content.toString());
                                break;
                            case "[Begin:审核文件]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:审核文件]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("SHWJ", Content.toString());
                                break;
                        }
                        line=br.readLine();
                    }
                }
            } else if(type.equals("远程访问")&&line!=null) {
                if(line.equals("[Begin:远程访问]")) {
                    line=br.readLine();
                    while(!line.equals("[End:远程访问]")) {
                        switch (line) {
                            case "[受检部门]":
                                line = br.readLine();
                                map.put("SJBM", line);
                                break;
                            case "[检查授权方]":
                                line = br.readLine();
                                map.put("JCSQF", line);
                                break;
                            case "[被通知人姓名/ID号]":
                                line = br.readLine();
                                map.put("BTZRXM", line);
                                break;
                            case "[检查员及报告人姓名]":
                                line = br.readLine();
                                map.put("JCY", line);
                                break;
                            case "[Begin:检查活动描述]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:检查活动描述]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("JCHDMS", Content.toString());
                                break;
                            case "[Begin:审核文件]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:审核文件]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("SHWJ", Content.toString());
                                break;
                        }
                        line=br.readLine();
                    }
                }
            } else if(type.equals("个人化软件及动态链接库")&&line!=null) {
                if(line.equals("[Begin:个人化软件及动态链接库]")) {
                    line=br.readLine();
                    while(!line.equals("[End:个人化软件及动态链接库]")) {
                        switch (line) {
                            case "[受检部门]":
                                line = br.readLine();
                                map.put("SJBM", line);
                                break;
                            case "[检查授权方]":
                                line = br.readLine();
                                map.put("JCSQF", line);
                                break;
                            case "[被通知人姓名/ID号]":
                                line = br.readLine();
                                map.put("BTZRXM", line);
                                break;
                            case "[检查员及报告人姓名]":
                                line = br.readLine();
                                map.put("JCY", line);
                                break;
                            case "[Begin:检查活动描述]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:检查活动描述]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("JCHDMS", Content.toString());
                                break;
                            case "[Begin:审核文件]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:审核文件]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("SHWJ", Content.toString());
                                break;
                        }
                        line=br.readLine();
                    }
                }
            } else if(type.equals("机房保险箱")&&line!=null) {
                if(line.equals("[Begin:机房保险箱]")) {
                    line=br.readLine();
                    while(!line.equals("[End:机房保险箱]")) {
                        switch (line) {
                            case "[受检部门]":
                                line = br.readLine();
                                map.put("SJBM", line);
                                break;
                            case "[检查授权方]":
                                line = br.readLine();
                                map.put("JCSQF", line);
                                break;
                            case "[被通知人姓名/ID号]":
                                line = br.readLine();
                                map.put("BTZRXM", line);
                                break;
                            case "[检查员及报告人姓名]":
                                line = br.readLine();
                                map.put("JCY", line);
                                break;
                            case "[Begin:检查活动描述]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:检查活动描述]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("JCHDMS", Content.toString());
                                break;
                            case "[Begin:审核文件]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:审核文件]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("SHWJ", Content.toString());
                                break;
                        }
                        line=br.readLine();
                    }
                }
            } else if(type.equals("数据访问、删除审查")&&line!=null) {
                if(line.equals("[Begin:数据访问、删除审查]")) {
                    line=br.readLine();
                    while(!line.equals("[End:数据访问、删除审查]")) {
                        switch (line) {
                            case "[受检部门]":
                                line = br.readLine();
                                map.put("SJBM", line);
                                break;
                            case "[检查授权方]":
                                line = br.readLine();
                                map.put("JCSQF", line);
                                break;
                            case "[被通知人姓名/ID号]":
                                line = br.readLine();
                                map.put("BTZRXM", line);
                                break;
                            case "[检查员及报告人姓名]":
                                line = br.readLine();
                                map.put("JCY", line);
                                break;
                            case "[Begin:检查活动描述]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:检查活动描述]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("JCHDMS", Content.toString());
                                break;
                            case "[Begin:审核文件]":
                                line = br.readLine();
                                Content = new StringBuilder();
                                while (!line.equals("[End:审核文件]")) {
                                    Content.append(line).append("\n");
                                    line = br.readLine();
                                }
                                map.put("SHWJ", Content.toString());
                                break;
                        }
                        line=br.readLine();
                    }
                }
            }
        }while (line!=null);
        br.close();
        reader.close();
        return map;
    }

    public void CellIn(XSSFSheet sheet, int rowNum, int cellNum, String Content) {
        //获取当前行
        XSSFRow row=sheet.getRow(rowNum);
        //获取当前列
        XSSFCell cell=row.getCell(cellNum);
        //设置当前单元格内容
        cell.setCellValue(Content);
    }
}
