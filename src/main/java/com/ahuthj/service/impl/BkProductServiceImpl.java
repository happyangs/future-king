package com.ahuthj.service.impl;

import com.ahuthj.controller.ProductController;
import com.ahuthj.enums.IsDeleteEnum;
import com.ahuthj.mapper.BkProductMapper;
import com.ahuthj.model.BkProduct;
import com.ahuthj.model.BkProductExample;
import com.ahuthj.model.request.ProductQueryVo;
import com.ahuthj.service.BkProductService;
import com.alibaba.druid.support.json.JSONUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Bryant on 2018.11.8
 */
@Service
public class BkProductServiceImpl implements BkProductService {

    private static Logger logger = LoggerFactory.getLogger(BkProductServiceImpl.class);

    @Autowired
    private BkProductMapper bkProductMapper;

    @Override
    public List<BkProduct> findAllProduct() {

        BkProductExample bkProductExample = new BkProductExample();
        BkProductExample.Criteria criteria = bkProductExample.createCriteria();
        criteria.andIsDeleteEqualTo(0);
        List<BkProduct> bkProductList = bkProductMapper.selectByExample(bkProductExample);
        return bkProductList;
    }

    @Override
    public List<BkProduct> pageQuery(ProductQueryVo productQueryVo) {
        BkProductExample bkProductExample = new BkProductExample();
        BkProductExample.Criteria criteria = bkProductExample.createCriteria();
        criteria.andIsDeleteEqualTo(0);
        bkProductExample.setOffset(productQueryVo.getPageNum().longValue());
        bkProductExample.setLimit(productQueryVo.getPageSize());
        List<BkProduct> bkProductList = bkProductMapper.selectByExample(bkProductExample);

        return bkProductList;
    }
}
