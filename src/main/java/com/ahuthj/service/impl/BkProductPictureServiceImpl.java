package com.ahuthj.service.impl;

import com.ahuthj.enums.ConfigTypeEnum;
import com.ahuthj.enums.IsDeleteEnum;
import com.ahuthj.mapper.BkProductPictureMapper;
import com.ahuthj.model.BkConfig;
import com.ahuthj.model.BkProductPicture;
import com.ahuthj.model.BkProductPictureExample;
import com.ahuthj.service.BkProductPictureService;
import com.ahuthj.service.ConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Created by Byant on 2018-11-21.
 */
@Service
public class BkProductPictureServiceImpl implements BkProductPictureService {

    @Autowired
    private BkProductPictureMapper bkProductPictureMapper;

    @Autowired
    ConfigService configService;

    @Override
    public List<BkProductPicture> findPictureByProductId(List<Integer> productIds) {
        BkProductPictureExample bkProductPictureExample = new BkProductPictureExample();
        BkProductPictureExample.Criteria criteria = bkProductPictureExample.createCriteria();
        criteria.andProductIdIn(productIds);
        criteria.andIsDeleteEqualTo(IsDeleteEnum.NOT_DELETE.getCode());
        bkProductPictureExample.setOrderByClause("picture_type asc");
        List<BkProductPicture> list = bkProductPictureMapper.selectByExample(bkProductPictureExample);
        List<BkConfig> configList = configService.getBkConfig(ConfigTypeEnum.PICTURE_TYPE.getCode());
        Map<Integer,String> map;
        if (!CollectionUtils.isEmpty(configList)){
            map = configList.stream().filter(bkConfig -> !StringUtils.isEmpty(bkConfig.getZhName())).collect(Collectors.toMap(BkConfig::getCode,BkConfig::getZhName));
            list.stream().forEach(bkProductPicture -> {
                bkProductPicture.setPictureTypeName(map.get(Integer.valueOf(bkProductPicture.getPictureType())));
            });
        }
        return list;
    }
}
