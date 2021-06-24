package top.hawile.service.impl;

import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import top.hawile.entity.Csr;
import top.hawile.mapper.CsrMapper;
import top.hawile.service.CsrService;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class CsrServiceImpl implements CsrService {

    @Resource
    private CsrMapper csrMapper;

    @Override
    //获取客户账号信息列表
    public List<Csr> list() {
        return csrMapper.selectAll();
    }

    @Override
    //添加客户账号信息
    public int insert(Csr csr) {
        return csrMapper.insertSelective(csr);
    }

    @Override
    //修改客户账号信息
    public int update(Csr csr) {
        return csrMapper.updateByPrimaryKeySelective(csr);
    }

    @Override
    //删除客户账号信息
    public int delete(Integer id) {
        return csrMapper.deleteByPrimaryKey(id);
    }

    @Override
    //打印客户账号列表
    public String print(String filePath, int state) throws Exception {
        List<Csr> CsrList=csrMapper.selectAll();
        Date date = new Date();	//实例化当前时间
        Csr Csr;
        FileInputStream in=new FileInputStream(filePath);	//创建Excel文件的输入流对象
        XSSFWorkbook wb=new XSSFWorkbook(in);	//根据模板创建excel工作簿
        in.close();
        XSSFSheet sheet = wb.getSheetAt(0);	//获取模板Sheet
        XSSFRow row;	//创建XSSFRow对象
        XSSFCellStyle cellStyle = wb.createCellStyle(); // 单元格样式
        cellStyle.setAlignment(HorizontalAlignment.CENTER);	//水平居中
        cellStyle.setVerticalAlignment(VerticalAlignment.CENTER);//垂直居中
        cellStyle.setBorderBottom(BorderStyle.THIN);	//下边框
        cellStyle.setBorderLeft(BorderStyle.THIN);	//左边框
        cellStyle.setBorderRight(BorderStyle.THIN);	//右边框
        cellStyle.setBorderTop(BorderStyle.THIN);	//上边框
        int line = 0;   //初始化行号；
        for (Csr csr : CsrList) {
            Csr = csr;
            //如果账号状态为注销状态并且不需要导出注销的账号就跳过这个账号
            if (Csr.getState().equals("注销")&&state == 0) continue;
            line++;
            row = sheet.createRow(line + 3);
            row.createCell(0).setCellValue(line);
            row.getCell(0).setCellStyle(cellStyle);
            row.createCell(1).setCellValue(Csr.getVpnName());
            row.getCell(1).setCellStyle(cellStyle);
            row.createCell(2).setCellValue(Csr.getFtpName());
            row.getCell(2).setCellStyle(cellStyle);
            row.createCell(3).setCellValue(Csr.getName());
            row.getCell(3).setCellStyle(cellStyle);
            if (Csr.getCreateDate() != null) {
                //转换日期类型为字符串类型
                String createDate = Csr.getCreateDate();
                row.createCell(4).setCellValue(createDate);
                row.getCell(4).setCellStyle(cellStyle);
            }
            row.createCell(5).setCellValue(Csr.getPath());
            row.getCell(5).setCellStyle(cellStyle);
            row.createCell(6).setCellValue(Csr.getState());
            row.getCell(6).setCellStyle(cellStyle);
            if (Csr.getUpdateTime() != null) {
                //转换日期类型为字符串类型
                SimpleDateFormat uTime = new SimpleDateFormat("yyyy-MM-dd");
                String updateTime = uTime.format(date);
                row.createCell(7).setCellValue(updateTime);
                row.getCell(7).setCellStyle(cellStyle);
            }
            row.setHeight((short) 500);
        }
        //格式化时间
        SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmss");
        //定义下载表单文件名
        String fileName="CsrPrint"+fmt.format(date)+".xlsx";
        //输出Excel文件
        String root = System.getProperty("user-dir");
        File folder=new File(root,"FormInput");
        if(!folder.exists())folder.mkdirs();
        OutputStream output=new FileOutputStream(new File(folder, fileName));
        wb.write(output);
        wb.close();
        output.close();
        return fileName;
    }

    @Override
    public int updateManyState(String state, List<String> ids, String remark) {
        return csrMapper.updateManyState(state,ids,remark);
    }

    @Override
    public int deleteMany(List<String> ids) {
        return csrMapper.deleteMany(ids);
    }
}