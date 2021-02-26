package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.ItAssets;
import top.hawile.mapper.ItAssetsMapper;
import top.hawile.service.ItAssetsService;
import javax.annotation.Resource;
import java.util.List;

@Service
public class ItAssetsServiceImpl implements ItAssetsService {

    @Resource
    private ItAssetsMapper itAssetsMapper;

    @Override
    //获取IT固定资产列表
    public List<ItAssets> list() {
        return itAssetsMapper.selectAll();
    }

    @Override
    //添加IT固定资产
    public int insert(ItAssets itAssets) {
        //获取当前设备编号的设备
        ItAssets itAssets1 = itAssetsMapper.selectNumber(itAssets.getNumber());
        //判断是否存在当前设备编号设备
        if (itAssets1 != null){
            //返回值
            return 100;
        }
        return itAssetsMapper.insertSelective(itAssets);
    }

    @Override
    //修改IT固定资产
    public int update(ItAssets itAssets) {
        return itAssetsMapper.updateByPrimaryKeySelective(itAssets);
    }

    @Override
    //删除IT固定资产
    public int delete(Integer id) {
        return itAssetsMapper.deleteByPrimaryKey(id);
    }

    @Override
    //导出IT固定资产到Excel
    public void exportExcel(String exportId) throws Exception {
        /*List<ItAssets> AssetsList;
        //实例化当前时间
        Date date = new Date();
        ItAssets itAssets;
        //获取导出列表
        AssetsList=itAssetsMapper.selectId(exportId.split(","));
        System.out.println(AssetsList.size());
        System.out.println(exportId);
        //创建XSSFWorkbook对象
        XSSFWorkbook wb = new XSSFWorkbook();
        //创建XSSFSheet对象
        XSSFSheet sheet = wb.createSheet("IT固定资产");
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
        for(int i=0;i<AssetsList.size();i++) {	//循环取出数据
            row = sheet.createRow(i+1);
            itAssets = AssetsList.get(i);
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
        String fileName="IT固定资产表"+fmt.format(date)+".xlsx";
        //转换编码格式
        fileName=new String(fileName.getBytes(),"ISO8859-1");
        //输出Excel文件
        OutputStream output=response.getOutputStream();
        response.reset();
        response.setHeader("Content-disposition", "attachment; filename="+fileName);
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        wb.write(output);
        output.close();
        wb.close();*/
    }
}
