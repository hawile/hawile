package top.hawile.service;

import top.hawile.entity.Contact;

import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.List;

public interface ContactService {
    //获取厂商联系方式列表
    List<Contact> list();

    //添加厂商联系方式
    int insert(Contact contact);

    //修改厂商联系方式
    int update(Contact contact);

    //删除厂商联系方式
    int delete(Integer id);

    //导出厂商联系方式Excel列表
    void exportExcel(String exportId) throws Exception;
}
