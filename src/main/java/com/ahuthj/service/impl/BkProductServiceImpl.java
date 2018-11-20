package com.ahuthj.service.impl;

import com.ahuthj.common.model.Meta;
import com.ahuthj.common.model.Result;
import com.ahuthj.controller.ProductController;
import com.ahuthj.enums.IsDeleteEnum;
import com.ahuthj.mapper.BkProductMapper;
import com.ahuthj.mapper.BkProductPictureMapper;
import com.ahuthj.model.BkProduct;
import com.ahuthj.model.BkProductExample;
import com.ahuthj.model.request.ProductQueryVo;
import com.ahuthj.service.BkProductService;
import com.alibaba.druid.support.json.JSONUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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

    @Autowired
    private BkProductPictureMapper bkProductPictureMapper;

    @Override
    public List<BkProduct> findByProductId(List<Integer> productIds) {
        BkProductExample bkProductExample = new BkProductExample();
        BkProductExample.Criteria criteria = bkProductExample.createCriteria();
        criteria.andProductIdIn(productIds);
        List<BkProduct> list = bkProductMapper.selectByExample(bkProductExample);
        return list;
    }

    @Override
    public Result<BkProduct> pageQuery(ProductQueryVo productQueryVo) {
        int pageNumum = productQueryVo.getPageNum();
        int pageSize = productQueryVo.getPageSize();
        PageHelper.startPage(pageNumum , pageSize);
        BkProductExample bkProductExample = new BkProductExample();
        BkProductExample.Criteria criteria = bkProductExample.createCriteria();
        criteria.andIsDeleteEqualTo(IsDeleteEnum.NOT_DELETE.getCode());
        List<BkProduct> list = bkProductMapper.selectByExample(bkProductExample);
        //得到分页的结果对象
        PageInfo<BkProduct> pageInfo = new PageInfo<>(list);
        //得到分页中的person条目对象
        List<BkProduct> responseList = pageInfo.getList();
        Long total = pageInfo.getTotal();
        logger.info("-----------------"+String.valueOf(total));
        return Result.buildResult(responseList, Meta.buildMeta(total.intValue()));
    }
}
