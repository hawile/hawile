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
        //获取数据库中软件对象
        SoftApp softApp1 = softAppMapper.selectByPrimaryKey(softApp.getId());
        //判断是否修改成功
        int state = softAppMapper.updateByPrimaryKeySelective(softApp);
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
