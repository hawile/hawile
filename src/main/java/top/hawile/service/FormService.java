package top.hawile.service;

import top.hawile.entity.Form;
import java.util.List;

public interface FormService {
    
    //获取文件列表
    List<Form> list();

    //获取能填写表单文件列表
    List<Form> inputList();

    //判断是否存在特定文件编号
    int isSerial(String serial);
    
    //添加文件
    int insert(Form form);
    
    //修改文件
    int update(Form form);
    
    //删除文件
    int delete(Integer id);
}
