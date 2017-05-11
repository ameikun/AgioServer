package com.cqu.agio.entity;

import lombok.Data;

import java.util.Date;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class Price {
    private String storeID;
    private String goodID;
    private String priceID;
    private Integer price;
    private Date priceDate;
}
