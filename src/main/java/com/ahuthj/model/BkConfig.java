package com.ahuthj.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @author 
 */
@Data
public class BkConfig implements Serializable {
    private Integer id;

    /**
     * 配置项
     */
    private String configType;

    /**
     * 配置code
     */
    private Integer code;

    /**
     * 内容项
     */
    private String zhName;

    /**
     * 添加时间
     */
    private String addTime;

    /**
     * 更新时间
     */
    private String updateTime;

    /**
     * 删除标记
     */
    private Byte isDelete;
}