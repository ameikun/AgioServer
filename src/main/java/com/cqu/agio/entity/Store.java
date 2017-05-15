package com.cqu.agio.entity;

import lombok.Data;

/**
 * Created by Amei on 2017/5/9.
 */
@Data
public class Store {
    private String storeID;
    private String shopkeeperID;
    private String shopimageID;//上传图片
    private String shopName;
    private String shopAddress;
    private Long startTime;
    private Long endTime;
    private Integer startLevel;
}
