package top.hawile.service.impl;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import top.hawile.entity.Contact;
import top.hawile.mapper.ContactMapper;
import top.hawile.service.ContactService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class ContactServiceImpl implements ContactService {

    @Resource
    private ContactMapper contactMapper;
    @Resource
    private HttpServletResponse response;

    @Override
    //获取厂商联系方式列表
    public List<Contact> list() {
        return contactMapper.selectAll();
    }

    @Override
    //添加厂商联系方式
    public int insert(Contact contact) {
        return contactMapper.insertSelective(contact);
    }

    @Override
    //修改厂商联系方式
    public int update(Contact contact) {
        return contactMapper.updateByPrimaryKeySelective(contact);
    }

    @Override
    //删除厂商联系方式
    public int delete(Integer id) {
        return contactMapper.deleteByPrimaryKey(id);
    }

    @Override
    //导出厂商联系方式Excel列表
    public void exportExcel(String exportId) throws Exception {
        //实例化当前时间
        Date date = new Date();
        //获取列表信息
        List<Contact> contactList=contactMapper.selectId(exportId.split(","));
        //创建XSSFWorkbook对象
        XSSFWorkbook wb = new XSSFWorkbook();
        //创建XSSFSheet对象
        XSSFSheet sheet = wb.createSheet("厂商联系信息");
        //创建XSSFRow对象
        XSSFRow row;
        //表的第一行
        row=sheet.createRow(0);
        row.createCell(0).setCellValue("ID");
        row.createCell(1).setCellValue("厂商名称");
        row.createCell(2).setCellValue("设备名称");
        row.createCell(3).setCellValue("联系人");
        row.createCell(4).setCellValue("联系电话");
        row.createCell(5).setCellValue("电子邮箱");
        row.createCell(6).setCellValue("QQ号码");
        row.createCell(7).setCellValue("备注");
        row.createCell(8).setCellValue("修改时间");
        //新建Contact对象
        Contact contact;
        //循环取出数据
        for(int i=0;i<contactList.size();i++) {
            row = sheet.createRow(i+1);
            contact = contactList.get(i);
            row.createCell(0).setCellValue(contact.getId());
            row.createCell(1).setCellValue(contact.getTradeName());
            row.createCell(2).setCellValue(contact.getDevice());
            row.createCell(3).setCellValue(contact.getContacts());
            row.createCell(4).setCellValue(contact.getNumber());
            row.createCell(5).setCellValue(contact.getEmail());
            row.createCell(6).setCellValue(contact.getQq());
            row.createCell(7).setCellValue(contact.getRemark());
            if(contact.getUpdateTime()!=null) {
                //转换日期类型为字符串类型
                SimpleDateFormat uTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String updateTime=uTime.format(contact.getUpdateTime());
                row.createCell(8).setCellValue(updateTime);
            }
        }
        //格式化时间
        SimpleDateFormat fmt = new SimpleDateFormat("_yyyyMMddHHmmssSSS");
        //定义下载表单文件名
        String fileName="厂商联系信息"+fmt.format(date)+".xlsx";
        //转换编码格式
        fileName=new String(fileName.getBytes(),"ISO8859-1");
        //输出Excel文件
        OutputStream output = response.getOutputStream();
        response.reset();
        response.setHeader("Content-disposition", "attachment; filename="+fileName);
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        wb.write(output);
        output.close();
        wb.close();
    }
}
