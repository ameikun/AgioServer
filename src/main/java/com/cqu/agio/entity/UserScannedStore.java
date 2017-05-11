package com.cqu.agio.entity;

import lombok.Data;

import java.util.Date;

/**
 * Created by Amei on 2017/5/9.
 */
@Data
public class UserScannedStore {
    private String userID;
    private String storeID;
    private Date scannedDate;
}
