package com.cqu.agio.bean;

import lombok.Data;

import java.io.Serializable;

/**
 * Created by Amei on 2017/5/12.
 */
@Data
public class StoreGoodPk implements Serializable{
    private String storeID;
    private String goodID;
    @Override
    public boolean equals(Object o)
    {
        if(o instanceof StoreGoodPk){
            StoreGoodPk pk = (StoreGoodPk) o;
            if(this.storeID==pk.getStoreID()&&this.goodID==pk.getGoodID())
            {
                return true;
            }
        }
        return false;

    }

    @Override
    public int hashCode() {
        return this.goodID.hashCode();
    }
}
