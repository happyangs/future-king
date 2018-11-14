package com.ahuthj.model.request;

import com.ahuthj.model.PageReq;
import lombok.Data;

/**
 * Created by Bryant on 2018.11.14
 */
@Data
public class ProductQueryVo extends PageReq {

    private int productId; // 商品id
}
