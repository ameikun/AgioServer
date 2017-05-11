package com.cqu.agio.entity;

import lombok.Data;

import java.util.Date;

/**
 * Created by Amei on 2017/5/11.
 */
@Data
public class Comment {
    private String commentID;
    private String commentUserID;
    private String commentGoodID;
    private String commentContent;
    private Date commentDate;
}
