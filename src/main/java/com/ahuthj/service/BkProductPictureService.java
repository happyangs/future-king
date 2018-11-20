package com.ahuthj.service;

import com.ahuthj.model.BkProduct;
import com.ahuthj.model.BkProductPicture;

import java.util.List;

/**
 * Created by Byant on 2018-11-21.
 */
public interface BkProductPictureService {

    List<BkProductPicture> findPictureByProductId(List<Integer> productIds);
}
