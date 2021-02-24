package top.hawile.service;

import top.hawile.entity.ItAssets;
import java.util.List;

public interface ItAssetsService {

    //获取IT固定资产列表
    List<ItAssets> list();

    //添加IT固定资产
    int insert(ItAssets itAssets);

    //修改IT固定资产
    int update(ItAssets itAssets);

    //删除IT固定资产
    int delete(Integer id);

    //导出IT固定资产到Excel
    void exportExcel(String exportId) throws Exception;
}
