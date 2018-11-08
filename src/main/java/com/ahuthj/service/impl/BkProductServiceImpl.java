package com.ahuthj.service.impl;

import com.ahuthj.enums.IsDeleteEnum;
import com.ahuthj.mapper.BkProductMapper;
import com.ahuthj.model.BkProduct;
import com.ahuthj.model.BkProductExample;
import com.ahuthj.service.BkProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Bryant on 2018.11.8
 */
@Service
public class BkProductServiceImpl implements BkProductService {

    @Autowired
    private BkProductMapper bkProductMapper;

    @Override
    public List<BkProduct> findAllProduct() {

        BkProductExample bkProductExample = new BkProductExample();
        BkProductExample.Criteria criteria = bkProductExample.createCriteria();
        criteria.andIsDeleteEqualTo(IsDeleteEnum.NOT_DELETE.getCode());
        List<BkProduct> bkProductList = bkProductMapper.selectByExample(bkProductExample);
        return bkProductList;
    }
}
