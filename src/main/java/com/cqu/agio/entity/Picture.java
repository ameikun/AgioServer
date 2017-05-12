package com.cqu.agio.entity;

import com.cqu.agio.bean.PicturePk;
import lombok.Data;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class Picture {
   private PicturePk picturePk;
    private String pictureLink;
    private String pictureDes;
}
