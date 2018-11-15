/*
 * Copyright (c) 2018. SheIn
 * 南京领添信息技术有限公司
 * http://shein.com
 * All rights reserved.
 */

package com.ahuthj.model;

import com.ahuthj.common.model.RequestVo;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;

/**
 * 分页请求
 * Created by Bryant on 2018.11.14
 */
@Data
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class PageReq extends RequestVo {

    private Integer pageSize;

    private Integer pageNum;
}
