package com.cqu.agio.entity;

import lombok.Data;

import java.util.Date;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class Coupon {
    private String userID;
    private Integer couponLimit;
    private String couponReason;
    private Date receiveDate;
    private Date expireDate;
}
