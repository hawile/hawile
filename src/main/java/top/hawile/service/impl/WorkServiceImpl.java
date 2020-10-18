package top.hawile.service.impl;

import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import top.hawile.entity.User;
import top.hawile.entity.Work;
import top.hawile.mapper.WorkMapper;
import top.hawile.service.WorkService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class WorkServiceImpl implements WorkService {

    @Resource
    private HttpSession session;
    @Resource
    private HttpServletResponse response;
    @Resource
    private WorkMapper workMapper;

    @Override
    //获取工作列表
    public List<Work> list() {
        return workMapper.selectAll();
    }

    @Override
    //添加工作内容
    public int insert(Work work) {
        return workMapper.insert(work);
    }

    @Override
    //更新工作内容
    public int update(Work work) {
        return workMapper.updateByPrimaryKey(work);
    }

    @Override
    //删除工作内容
    public int delete(Integer id) {
        return workMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void exportExcel(String beginDate, String endDate, String filePath) {
        //获取特定时间段的工作内容列表
        List<Work> workList = workMapper.selectDate(beginDate,endDate);
        //获取当前登录user对象
        User user = (User) session.getAttribute("user");
        //判断该时间段是否有工作内容
        if(workList.size() == 0)return;
        //判断模板文件是否存在
        if(!new File(filePath).exists())return;
        try {
            //获取Excel模板
            FileInputStream in = new FileInputStream(filePath);
            //创建XSSFWorkbook对象
            XSSFWorkbook wb = new XSSFWorkbook(in);
            //设置单元格全边框
            XSSFCellStyle setBorder = wb.createCellStyle();
            setBorder.setBorderBottom(BorderStyle.THIN);
            setBorder.setBorderLeft(BorderStyle.THIN);
            setBorder.setBorderRight(BorderStyle.THIN);
            setBorder.setBorderTop(BorderStyle.THIN);
            //关闭输入流
            in.close();
            //创建XSSFSheet对象
            XSSFSheet sheet = wb.getSheetAt(0);
            //表的第二行
            XSSFRow row=sheet.getRow(1);
            row.getCell(1).setCellValue(beginDate);
            row.getCell(3).setCellValue(endDate);
            //表的第三行
            row=sheet.getRow(2);
            row.getCell(1).setCellValue(user.getName());
            row.getCell(3).setCellValue(user.getDeptName());
            Work work;
            //循环取出数据
            for(int i=0;i<workList.size();i++) {
                row = sheet.createRow(i+5);
                work = workList.get(i);
                row.createCell(0).setCellStyle(setBorder);
                row.getCell(0).setCellValue(work.getDate());
                row.createCell(1).setCellStyle(setBorder);
                row.createCell(2).setCellStyle(setBorder);
                row.createCell(3).setCellStyle(setBorder);
                sheet.addMergedRegion(new CellRangeAddress(i+5,i+5,1,3));
                row.getCell(1).setCellValue(work.getContent());
            }
            //重新格式化日期
            beginDate = beginDate.replace("-","");
            endDate = endDate.replace("-","");
            //定义下载表单文件名
            String fileName="工作报表_"+beginDate+"-"+endDate+".xlsx";
            //转换编码格式
            fileName=new String(fileName.getBytes(),"ISO8859-1");
            //输出Excel文件
            response.reset();
            response.setHeader("Content-disposition", "attachment; filename="+fileName);
            response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
            OutputStream output=response.getOutputStream();
            wb.write(output);
            output.flush();
            output.close();
            wb.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
