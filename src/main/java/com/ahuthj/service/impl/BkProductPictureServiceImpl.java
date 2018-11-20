package com.ahuthj.service.impl;

import com.ahuthj.enums.IsDeleteEnum;
import com.ahuthj.mapper.BkProductPictureMapper;
import com.ahuthj.model.BkProductPicture;
import com.ahuthj.model.BkProductPictureExample;
import com.ahuthj.service.BkProductPictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Byant on 2018-11-21.
 */
@Service
public class BkProductPictureServiceImpl implements BkProductPictureService {

    @Autowired
    private BkProductPictureMapper bkProductPictureMapper;

    @Override
    public List<BkProductPicture> findPictureByProductId(List<Integer> productIds) {
        BkProductPictureExample bkProductPictureExample = new BkProductPictureExample();
        BkProductPictureExample.Criteria criteria = bkProductPictureExample.createCriteria();
        criteria.andProductIdIn(productIds);
        criteria.andIsDeleteEqualTo(IsDeleteEnum.NOT_DELETE.getCode());
        List<BkProductPicture> list = bkProductPictureMapper.selectByExample(bkProductPictureExample);
        return list;
    }
}
