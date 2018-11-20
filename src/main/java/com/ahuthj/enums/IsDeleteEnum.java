/*
 * Copyright (c) 2018. SheIn
 * 南京领添信息技术有限公司
 * http://shein.com
 * All rights reserved.
 */

package com.ahuthj.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;


/**
 * Created by Bryant on 2018.11.8
 */
@AllArgsConstructor
public enum IsDeleteEnum {
    NOT_DELETE(0, "未删除"),
    NORMAL_DELETE(1, "正常删除");

    @Getter
    private Integer code;

    @Getter
    private String description;

    public static String code2desc(Byte code) {
        for (IsDeleteEnum type : IsDeleteEnum.values()) {
            if (code.equals(type.code)) {
                return type.getDescription();
            }
        }
        return "";
    }

}
