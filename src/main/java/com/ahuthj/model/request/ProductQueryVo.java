package com.ahuthj.model.request;

import com.ahuthj.model.PageReq;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;

import java.math.BigDecimal;

/**
 * Created by Bryant on 2018.11.14
 */
@Data
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class ProductQueryVo extends PageReq {

    /**
     * 商品id
     */
    private Integer productId;

    /**
     * 商品类型
     */
    private Integer productType;

    /**
     * 张数
     */
    private Integer htmlNum;

    /**
     * 价格
     */
    private BigDecimal price;

    private String theme;
}
