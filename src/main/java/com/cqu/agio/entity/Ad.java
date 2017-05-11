package com.cqu.agio.entity;

import lombok.Data;

import java.util.Date;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class Ad {
    private String adID;
    private String storeID;
    private String adType;
    private String adTitle;
    private Date adStartTime;
    private Date adEndTime;
    private String adContent;
    private String adLink;
}
