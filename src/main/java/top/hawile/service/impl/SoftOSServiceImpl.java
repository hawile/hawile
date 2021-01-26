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
        //定义上传文件状态
        int uploadState = 1;
        //获取数据库中软件对象
        SoftOS softOS1 = softOSMapper.selectByPrimaryKey(softOS.getId());
        //判断是否上传了文件
        if (softOS.getSize() == null){
            //将原来的软件路径赋值给对象
            softOS.setPath(softOS1.getPath());
            //将原来的软件大小赋值给对象
            softOS.setSize(softOS1.getSize());
            //设置上传文件状态
            uploadState = 0;
        }
        //执行修改操作到数据库
        int state = softOSMapper.updateByPrimaryKeySelective(softOS);
        //判断是否修改成功
        if (state == 1){
            //新建旧软件信息文件路径
            File file = new File(path,softOS1.getPath());
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
