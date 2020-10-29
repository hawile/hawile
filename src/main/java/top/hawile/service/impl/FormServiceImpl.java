package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.FileEntity;
import top.hawile.entity.Form;
import top.hawile.mapper.FormMapper;
import top.hawile.service.FormService;
import javax.annotation.Resource;
import java.io.File;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class FormServiceImpl implements FormService {

    @Resource
    private FormMapper formMapper;

    @Override
    //获取文件列表
    public List<Form> list() {
        return formMapper.selectAll();
    }

    @Override
    public List<Form> inputList() {
        return formMapper.selectInput();
    }

    @Override
    //判断是否存在特定文件编号
    public int isSerial(String serial) {
        return formMapper.selectSerial(serial).size();
    }

    @Override
    //添加文件
    public int insert(Form form) {
        //判断是否存在相同文件编号文件
        if(this.isSerial(form.getSerial()) > 0){
            return 2;
        }
        return formMapper.insertSelective(form);
    }

    @Override
    //修改文件
    public int update(Form form) {
        return formMapper.updateByPrimaryKeySelective(form);
    }

    @Override
    //删除文件
    public int delete(Integer id) {
        //获取要删除的文件信息
        Form form = formMapper.selectByPrimaryKey(id);
        //执行删除文件到数据库操作
        int state = formMapper.deleteByPrimaryKey(id);
        //判断是否删除成功
        if (state == 1){
            //获取工作根目录
            String root = System.getProperty("user.dir");
            //新建浏览文件路径
            File pdfFile = new File(root+"/Files/Form/"+form.getPath());
            //判断浏览文件是否存在
            if (pdfFile.exists()){
                //删除浏览文件
                pdfFile.delete();
            }
            //新建下载文件路径
            File officeFile = new File(root+"/Files/Form/"+form.getDownload());
            //判断下载文件是否存在
            if (officeFile.exists()){
                //删除下载文件
                officeFile.delete();
            }
            return 1;
        }
        return 0;
    }
}
