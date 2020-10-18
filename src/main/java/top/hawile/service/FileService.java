package top.hawile.service;

import org.springframework.web.multipart.MultipartFile;
import top.hawile.entity.FileEntity;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

public interface FileService {

    //获取文件列表
    List<FileEntity> list();

    //判断是否存在特定文件编号
    int isSerial(String serial);

    //添加文件
    int insert(FileEntity fileEntity);

    //修改文件
    int update(FileEntity fileEntity);

    //删除文件
    int delete(Integer id);

    //上传文件方法
    int upload(MultipartFile file, String name, String path) throws Exception;

    //下载文件方法
    int download(String download, String name, HttpServletResponse response) throws Exception;

    //查看文件方法
    void detail(String path, HttpServletResponse response);
}
