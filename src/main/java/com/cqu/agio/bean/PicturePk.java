package com.cqu.agio.bean;

import lombok.Data;

import java.io.Serializable;

/**
 * Created by Amei on 2017/5/12.
 */
@Data
public class PicturePk implements Serializable{
    private String pictureID;
    private String typeID;
    @Override
    public boolean equals(Object o)
    {
        if(o instanceof PicturePk){
            PicturePk pk = (PicturePk) o;
            if(this.pictureID==pk.getPictureID()&&this.typeID==pk.getTypeID())
            {
                return true;
            }
        }
        return false;

    }

    @Override
    public int hashCode() {
        return this.typeID.hashCode();
    }
}
