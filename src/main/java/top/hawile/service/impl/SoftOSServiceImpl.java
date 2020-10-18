package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.SoftOS;
import top.hawile.mapper.SoftOSMapper;
import top.hawile.service.SoftOSService;

import javax.annotation.Resource;
import java.io.File;
import java.util.List;

@Service
public class SoftOSServiceImpl implements SoftOSService {

    @Resource
    private SoftOSMapper softOSMapper;

    @Override
    //获取应用软件列表
    public List<SoftOS> list() {
        return softOSMapper.selectAll();
    }

    @Override
    //添加软件
    public int insert(SoftOS softOS) {
        return softOSMapper.insertSelective(softOS);
    }

    @Override
    //修改软件
    public int update(SoftOS softOS,String path) {
        //获取数据库中软件对象
        SoftOS softOS1 = softOSMapper.selectByPrimaryKey(softOS.getId());
        //判断是否修改成功
        int state = softOSMapper.updateByPrimaryKeySelective(softOS);
        if (state == 1){
            //新建旧软件信息文件路径
            File file = new File(path,softOS1.getPath());
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
        SoftOS softOS1 = softOSMapper.selectByPrimaryKey(id);
        //判断是否删除成功
        int state = softOSMapper.deleteByPrimaryKey(id);
        if (state == 1){
            //新建旧软件信息文件路径
            File file = new File(path,softOS1.getPath());
            //判断文件是否存在
            if (file.exists()){
                //删除该文件
                file.delete();
            }
        }
        return state;
    }
}
