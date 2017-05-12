package com.cqu.agio.bean;

import lombok.Data;

import java.io.Serializable;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class AdPK implements Serializable{
    private String adID;
    private String storeID;
    @Override
    public boolean equals(Object o)
    {
        if(o instanceof AdPK){
            AdPK pk = (AdPK) o;
            if(this.adID==pk.getAdID()&&this.storeID==pk.getStoreID())
            {
                return true;
            }
        }
        return false;

    }

    @Override
    public int hashCode() {
        return this.storeID.hashCode();
    }
}
