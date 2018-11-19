package com.ahuthj.service;

import com.ahuthj.model.BkProduct;
import com.ahuthj.model.request.ProductQueryVo;

import java.util.List;

/**
 * Created by Bryant on 2018.11.8
 */
public interface BkProductService {

    List<BkProduct> findAllProduct();

    List<BkProduct> pageQuery(ProductQueryVo productQueryVo);
}
