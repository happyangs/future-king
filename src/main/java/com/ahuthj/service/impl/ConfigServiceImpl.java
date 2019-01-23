package com.ahuthj.service.impl;

import com.ahuthj.mapper.BkConfigMapper;
import com.ahuthj.model.BkConfig;
import com.ahuthj.model.request.BkConfigReq;
import com.ahuthj.service.ConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Service
public class ConfigServiceImpl implements ConfigService {

    @Autowired
    private BkConfigMapper bkConfigMapper;

    @Override
    public List<BkConfig> queryConfigByCondition(BkConfigReq bkConfigReq) {
        return bkConfigMapper.queryConfig(bkConfigReq);
    }

    @Override
    public List<BkConfig> getBkConfig(String configType){
        BkConfigReq req = new BkConfigReq();
        req.setConfigType(configType);
        List<BkConfig> bkConfigs = bkConfigMapper.queryConfig(req);
        return bkConfigs;
    }

    @Override
    public BkConfig queryConfig(BkConfigReq bkConfigReq) {
        BkConfig bkConfig = null;
        List<BkConfig> list = bkConfigMapper.queryConfig(bkConfigReq);
        if (!CollectionUtils.isEmpty(list)){
            bkConfig = list.get(0);
        }
        return bkConfig;
    }
}
