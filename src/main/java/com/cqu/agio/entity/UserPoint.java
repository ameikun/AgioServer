package com.cqu.agio.entity;

import lombok.Data;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class UserPoint {
    private String userID;
    private Integer point;
    private String pointReason;
    private String pointDate;
}
