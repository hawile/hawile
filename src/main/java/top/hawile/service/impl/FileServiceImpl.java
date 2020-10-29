package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import top.hawile.entity.FileEntity;
import top.hawile.mapper.FileMapper;
import top.hawile.service.FileService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.List;

/**
 * @Author Hawile
 */
@Service
public class FileServiceImpl implements FileService {

    @Resource
    private FileMapper fileMapper;
    
    @Override
    //获取文件列表
    public List<FileEntity> list() {
        return fileMapper.selectAll();
    }

    @Override
    public int isSerial(String serial) {
        return fileMapper.selectSerial(serial).size();
    }

    @Override
    //添加文件
    public int insert(FileEntity fileEntity) {
        //判断是否存在相同文件编号文件
        if(this.isSerial(fileEntity.getSerial()) > 0){
            return 2;
        }
        return fileMapper.insertSelective(fileEntity);
    }

    @Override
    //修改文件
    public int update(FileEntity fileEntity) {
        return fileMapper.updateByPrimaryKeySelective(fileEntity);
    }

    @Override
    //删除文件
    public int delete(Integer id) {
        //获取要删除的文件信息
        FileEntity fileEntity = fileMapper.selectByPrimaryKey(id);
        //执行删除文件到数据库操作
        int state = fileMapper.deleteByPrimaryKey(id);
        //判断是否删除成功
        if (state == 1){
            //获取工作根目录
            String root = System.getProperty("user.dir");
            //新建浏览文件路径
            File pdfFile = new File(root+"/Files/File/"+fileEntity.getPath());
            //判断浏览文件是否存在
            if (pdfFile.exists()){
                //删除浏览文件
                pdfFile.delete();
            }
            //新建下载文件路径
            File officeFile = new File(root+"/Files/File/"+fileEntity.getDownload());
            //判断下载文件是否存在
            if (officeFile.exists()){
                //删除下载文件
                officeFile.delete();
            }
            return 1;
        }
        return 0;
    }

    @Override
    public int upload(MultipartFile file, String name, String path) throws Exception {
        //判断是否上传文件
        if(file.isEmpty() || name.equals("")){ return 0;}
        //获取上传文件名
        String fileName = file.getOriginalFilename();
        //获取文件扩展名
        String exts = fileName != null ? fileName.substring(fileName.lastIndexOf(".")) : null;
        //重新修改文件名
        fileName = name+exts;
        //新建文件路径
        File filePath = new File(path+fileName);
        //判断文件是否存在
        if(!filePath.exists()){
            //新建文件
            filePath.mkdirs();
        }
        //将上传文件写入硬盘
        file.transferTo(filePath);
        return 1;
    }

    @Override
    public int download(String filePath, String name, HttpServletResponse response) throws Exception {
        //新建下载文件路径
        File file = new File(filePath);
        //判断是否存在该文件
        if (!file.exists()) {
            return 0;
        }
        //获取下载文件扩展名
        String exts = filePath.substring(filePath.lastIndexOf("."));
        //设置下载文件名
        String fileName = name+exts;
        //对文件名重新编码
        fileName = new String(fileName.getBytes("GBK"), StandardCharsets.ISO_8859_1);
        // 配置文件下载
        response.setHeader("content-type", "application/octet-stream");
        response.setContentType("application/octet-stream");
        // 下载文件能正常显示中文
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
        // 实现文件下载
        byte[] buffer = new byte[1024];
        FileInputStream fis = null;
        BufferedInputStream bis = null;
        try {
            fis = new FileInputStream(file);
            bis = new BufferedInputStream(fis);
            OutputStream os = response.getOutputStream();
            int i = bis.read(buffer);
            while (i != -1) {
                os.write(buffer, 0, i);
                i = bis.read(buffer);
            }
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (bis != null) {
                try {
                    bis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        }
        return 0;
    }

    @Override
    public void detail(String filePath, HttpServletResponse response) {
        //新建文件路径
        File file = new File(filePath);
        //判断浏览文件是否存在
        if (file.exists()) {
            //将浏览文件写入response
            byte[] data;
            FileInputStream input=null;
            try {
                input= new FileInputStream(file);
                data = new byte[input.available()];
                input.read(data);
                response.getOutputStream().write(data);
            } catch (Exception e) {
                e.printStackTrace();
            }finally{
                try {
                    if(input!=null){
                        input.close();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
