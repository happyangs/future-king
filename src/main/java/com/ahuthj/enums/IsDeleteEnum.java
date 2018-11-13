/*
 * Copyright (c) 2018. SheIn
 * 南京领添信息技术有限公司
 * http://shein.com
 * All rights reserved.
 */

package com.ahuthj.enums;

import lombok.Getter;


/**
 * Created by Bryant on 2018.11.8
 */
public enum IsDeleteEnum {
    NOT_DELETE(0, "未删除"),
    NORMAL_DELETE(1, "正常删除"),
    UNSALABLE_DELETE(2, "滞销删除");

    @Getter
    private Integer code;

    @Getter
    private String description;

    IsDeleteEnum(Integer code, String description) {
        this.code = code;
        this.description = description;
    }

}
