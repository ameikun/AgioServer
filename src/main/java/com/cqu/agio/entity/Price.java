package com.cqu.agio.entity;

import com.cqu.agio.bean.PricePk;
import lombok.Data;

import java.util.Date;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class Price {
    private PricePk pricePk;
    private Integer price;
    private Date priceDate;
}
