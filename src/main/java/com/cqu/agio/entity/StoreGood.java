package com.cqu.agio.entity;

import com.cqu.agio.bean.StoreGoodPk;
import lombok.Data;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class StoreGood {
    private StoreGoodPk storeGoodPk;
    private String goodName;
    private String priceID;
    private String goodDes;
    private String goodClassify;
}
