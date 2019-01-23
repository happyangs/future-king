package com.ahuthj.service.impl;

import com.ahuthj.common.model.Meta;
import com.ahuthj.common.model.Result;
import com.ahuthj.enums.ConfigTypeEnum;
import com.ahuthj.enums.IsDeleteEnum;
import com.ahuthj.mapper.BkProductMapper;
import com.ahuthj.mapper.BkProductPictureMapper;
import com.ahuthj.model.BkConfig;
import com.ahuthj.model.BkProduct;
import com.ahuthj.model.BkProductExample;
import com.ahuthj.model.request.ProductQueryVo;
import com.ahuthj.service.BkProductService;
import com.ahuthj.service.ConfigService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

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

    @Autowired
    private ConfigService configService;

    @Override
    public List<BkProduct> findByProductId(List<Integer> productIds) {
        BkProductExample bkProductExample = new BkProductExample();
        BkProductExample.Criteria criteria = bkProductExample.createCriteria();
        criteria.andProductIdIn(productIds);
        List<BkProduct> list = bkProductMapper.selectByExample(bkProductExample);
        return list;
    }

    private String getThemeByCode(int code){
        List<BkConfig> productThemeList = configService.getBkConfig(ConfigTypeEnum.PRODUCT_THEME.getCode());
        Map<Integer,String> map = productThemeList.stream().collect(Collectors.toMap(BkConfig::getCode,BkConfig::getZhName));
        return map.get(code);
    }

    @Override
    public Result<BkProduct> pageQuery(ProductQueryVo productQueryVo) {
        int pageNum = productQueryVo.getPageNum();
        int pageSize = productQueryVo.getPageSize();

        BkProductExample bkProductExample = new BkProductExample();
        BkProductExample.Criteria criteria = bkProductExample.createCriteria();
        criteria.andIsDeleteEqualTo(IsDeleteEnum.NOT_DELETE.getCode());
        // 类型
        if (productQueryVo.getProductType() != null && productQueryVo.getProductType() != 0){
            criteria.andProductTypeEqualTo(productQueryVo.getProductType());
        }
        // 主题
        Integer theme = productQueryVo.getProductTheme();
        if(theme != null && !Objects.equals(0,theme)){
            criteria.andProductThemeEqualTo(this.getThemeByCode(theme));
        }
        // 价格
        if (productQueryVo.getMaxPrice() != null){
            criteria.andPriceLessThan(productQueryVo.getMaxPrice());
        }
        if (productQueryVo.getMinPrice() != null){
            criteria.andPriceGreaterThanOrEqualTo(productQueryVo.getMinPrice());
        }
        // 张数
        if (productQueryVo.getMaxHtmlNum() != null){
            criteria.andHtmlNumLessThan(productQueryVo.getMaxHtmlNum());
        }
        if (productQueryVo.getMinHtmlNum() != null){
            criteria.andHtmlNumGreaterThanOrEqualTo(productQueryVo.getMinHtmlNum());
        }
        bkProductExample.setOrderByClause(" price asc");
        PageHelper.startPage(pageNum , pageSize,true);
        List<BkProduct> list = bkProductMapper.selectByExample(bkProductExample);
        //得到分页的结果对象
        PageInfo<BkProduct> pageInfo = new PageInfo<>(list);

        //得到分页中的person条目对象
        List<BkProduct> responseList = pageInfo.getList();
        Long total = pageInfo.getTotal();
        return Result.buildResult(responseList, Meta.buildMeta(total.intValue()));
    }
}
