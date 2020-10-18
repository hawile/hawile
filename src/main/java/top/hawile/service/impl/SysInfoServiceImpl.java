package top.hawile.service.impl;

import org.springframework.stereotype.Service;
import top.hawile.entity.SysInfo;
import top.hawile.mapper.SysInfoMapper;
import top.hawile.service.SysInfoService;

import javax.annotation.Resource;
@Service
public class SysInfoServiceImpl implements SysInfoService {

    @Resource
    private SysInfoMapper sysInfoMapper;

    @Override
    public int update(SysInfo sysInfo) {
        return sysInfoMapper.updateByPrimaryKeySelective(sysInfo);
    }

    @Override
    public SysInfo selectByName(String name) {
        return sysInfoMapper.selectByName(name);
    }
}
