package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.SoftApp;
import top.hawile.mapper.SoftAppMapper;
import top.hawile.service.SoftAppService;

import javax.annotation.Resource;
import java.io.File;
import java.util.List;

@Service
public class SoftAppServiceImpl implements SoftAppService {

    @Resource
    private SoftAppMapper softAppMapper;

    @Override
    //获取应用软件列表
    public List<SoftApp> list() {
        return softAppMapper.selectAll();
    }

    @Override
    //添加软件
    public int insert(SoftApp softApp) {
        return softAppMapper.insertSelective(softApp);
    }

    @Override
    //修改软件
    public int update(SoftApp softApp,String path) {
        //定义上传文件状态
        int uploadState = 1;
        //获取数据库中软件对象
        SoftApp softApp1 = softAppMapper.selectByPrimaryKey(softApp.getId());
        //判断是否上传了文件
        if (softApp.getSize() == null){
            //将原来的软件路径赋值给对象
            softApp.setPath(softApp1.getPath());
            //将原来的软件大小赋值给对象
            softApp.setSize(softApp1.getSize());
            //设置上传文件状态
            uploadState = 0;
        }
        //执行修改操作到数据库
        int state = softAppMapper.updateByPrimaryKeySelective(softApp);
        //判断是否修改成功
        if (state == 1){
            //新建旧软件信息文件路径
            File file = new File(path,softApp1.getPath());
            //判断文件是否存在
            if (file.exists() && uploadState == 0){
                //删除该文件
                file.delete();
            }
        }
        return state;
    }

    @Override
    //删除软件
    public int delete(Integer id, String path) {
        //获取数据库中软件对象
        SoftApp softApp1 = softAppMapper.selectByPrimaryKey(id);
        //判断是否删除成功
        int state = softAppMapper.deleteByPrimaryKey(id);
        if (state == 1){
            //新建旧软件信息文件路径
            File file = new File(path,softApp1.getPath());
            //判断文件是否存在
            if (file.exists()){
                //删除该文件
                file.delete();
            }
        }
        return state;
    }
}
