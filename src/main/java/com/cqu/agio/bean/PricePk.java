package com.cqu.agio.bean;

import lombok.Data;

import java.io.Serializable;

/**
 * Created by Amei on 2017/5/12.
 */
@Data
public class PricePk implements Serializable{
    private String storeID;
    private String goodID;
    private String priceID;
    @Override
    public boolean equals(Object o)
    {
        if(o instanceof PricePk){
            PricePk pk = (PricePk) o;
            if(this.storeID==pk.getStoreID()&&this.goodID==pk.getGoodID()&&this.priceID==pk.getPriceID())
            {
                return true;
            }
        }
        return false;

    }

    @Override
    public int hashCode() {
        return this.priceID.hashCode();
    }
}
