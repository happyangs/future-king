package com.ahuthj.service;

import com.ahuthj.model.BkConfig;
import com.ahuthj.model.request.BkConfigReq;

import java.util.List;

public interface ConfigService {

    List<BkConfig> queryConfigByCondition(BkConfigReq bkConfigReq);

    List<BkConfig> getBkConfig(String configType);

    BkConfig queryConfig(String configType);
}
