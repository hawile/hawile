package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.SoftDrive;
import top.hawile.mapper.SoftDriveMapper;
import top.hawile.service.SoftDriveService;

import javax.annotation.Resource;
import java.io.File;
import java.util.List;

@Service
public class SoftDriveServiceImpl implements SoftDriveService {

    @Resource
    private SoftDriveMapper softDriveMapper;

    @Override
    //获取驱动列表
    public List<SoftDrive> list() {
        return softDriveMapper.selectAll();
    }

    @Override
    //添加软件
    public int insert(SoftDrive softDrive) {
        return softDriveMapper.insertSelective(softDrive);
    }

    @Override
    //修改软件
    public int update(SoftDrive softDrive,String path) {
        //定义上传文件状态
        int uploadState = 1;
        //获取数据库中软件对象
        SoftDrive softDrive1 = softDriveMapper.selectByPrimaryKey(softDrive.getId());
        //判断是否上传了文件
        if (softDrive.getSize() == null){
            //将原来的软件路径赋值给对象
            softDrive.setPath(softDrive1.getPath());
            //将原来的软件大小赋值给对象
            softDrive.setSize(softDrive1.getSize());
            //设置上传文件状态
            uploadState = 0;
        }
        //执行修改操作到数据库
        int state = softDriveMapper.updateByPrimaryKeySelective(softDrive);
        //判断是否修改成功
        if (state == 1){
            //新建旧软件信息文件路径
            File file = new File(path,softDrive1.getPath());
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
        SoftDrive softDrive1 = softDriveMapper.selectByPrimaryKey(id);
        //判断是否删除成功
        int state = softDriveMapper.deleteByPrimaryKey(id);
        if (state == 1){
            //新建旧软件信息文件路径
            File file = new File(path,softDrive1.getPath());
            //判断文件是否存在
            if (file.exists()){
                //删除该文件
                file.delete();
            }
        }
        return state;
    }
}
