package com.ahuthj.mapper;

import com.ahuthj.model.BkConfig;
import com.ahuthj.model.request.BkConfigReq;

import java.util.List;

public interface BkConfigMapper {

    List<BkConfig> queryConfig(BkConfigReq bkConfigReq);

    void insertOrUpdate(BkConfigReq bkConfigReq);

    void deleteById(Integer id);
}