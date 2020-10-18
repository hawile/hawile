package top.hawile.service.impl;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import top.hawile.entity.AccNum;
import top.hawile.mapper.AccNumMapper;
import top.hawile.service.AccNumService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class AccNumServiceImpl implements AccNumService {

    @Resource
    private AccNumMapper accNumMapper;
    @Resource
    private HttpServletResponse response;

    @Override
    //获取账号信息列表
    public List<AccNum> list() {
        return accNumMapper.selectAll();
    }

    @Override
    //添加账号信息
    public int insert(AccNum accNum) {
        return accNumMapper.insertSelective(accNum);
    }

    @Override
    //修改账号信息
    public int update(AccNum accNum) {
        return accNumMapper.updateByPrimaryKeySelective(accNum);
    }

    @Override
    //删除账号信息
    public int delete(Integer id) {
        return accNumMapper.deleteByPrimaryKey(id);
    }

    @Override
    //导出账号信息到Excel
    public void exportExcel(String exportId) throws Exception {
        List<AccNum> AccList;
        //实例化当前时间
        Date date = new Date();
        AccNum Acc;
        //获取导出列表
        AccList=accNumMapper.selectId(exportId.split(","));
        System.out.println(AccList.size());
        System.out.println(exportId);
        //创建XSSFWorkbook对象
        XSSFWorkbook wb = new XSSFWorkbook();
        //创建XSSFSheet对象
        XSSFSheet sheet = wb.createSheet("账号信息");
        //表的第一行
        XSSFRow row=sheet.createRow(0);
        row.createCell(0).setCellValue("ID");
        row.createCell(1).setCellValue("区域");
        row.createCell(2).setCellValue("账号名称");
        row.createCell(3).setCellValue("账号类型");
        row.createCell(4).setCellValue("登陆IP");
        row.createCell(5).setCellValue("用户名");
        row.createCell(6).setCellValue("密码");
        row.createCell(7).setCellValue("备注");
        row.createCell(8).setCellValue("修改时间");
        for(int i=0;i<AccList.size();i++) {	//循环取出数据
            row = sheet.createRow(i+1);
            Acc = AccList.get(i);
            row.createCell(0).setCellValue(Acc.getId());
            row.createCell(1).setCellValue(Acc.getArea());
            row.createCell(2).setCellValue(Acc.getName());
            row.createCell(3).setCellValue(Acc.getType());
            row.createCell(4).setCellValue(Acc.getIp());
            row.createCell(5).setCellValue(Acc.getUser());
            row.createCell(6).setCellValue(Acc.getPassword());
            row.createCell(7).setCellValue(Acc.getRemark());
            if(Acc.getUpdateTime()!=null) {
                //转换日期类型为字符串类型
                SimpleDateFormat uTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String updateTime=uTime.format(Acc.getUpdateTime());
                row.createCell(8).setCellValue(updateTime);
            }
        }
        //格式化时间
        SimpleDateFormat fmt = new SimpleDateFormat("_yyyyMMddHHmmssSSS");
        //定义下载表单文件名
        String fileName="账号信息表"+fmt.format(date)+".xlsx";
        //转换编码格式
        fileName=new String(fileName.getBytes(),"ISO8859-1");
        //输出Excel文件
        OutputStream output=response.getOutputStream();
        response.reset();
        response.setHeader("Content-disposition", "attachment; filename="+fileName);
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        wb.write(output);
        output.close();
        wb.close();
    }
}
