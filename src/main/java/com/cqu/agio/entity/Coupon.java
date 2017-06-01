package com.cqu.agio.entity;

import lombok.Data;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class Coupon {
    private String userID;
    private Integer couponLimit;
    private String couponReason;
    private String receiveDate;
    private String expireDate;
}
