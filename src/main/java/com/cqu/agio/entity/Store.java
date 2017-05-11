package com.cqu.agio.entity;

import lombok.Data;

import java.util.Date;

/**
 * Created by Amei on 2017/5/9.
 */
@Data
public class Store {
    private String storeID;
    private String shopkeeperID;
    private String shopimageID;
    private String shopName;
    private String shopAddress;
    private Date startTime;
    private Date endTime;
    private int startLevel;
}
