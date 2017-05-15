package com.cqu.agio.service;

import com.cqu.agio.common.Message;
import com.cqu.agio.common.Status;
import com.cqu.agio.dao.UserPointDAO;
import com.cqu.agio.entity.UserPoint;
import org.springframework.stereotype.Component;

import javax.inject.Inject;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Amei on 2017/5/15.
 */
@Component
public class UserPointService {
    @Inject
    private UserPointDAO userPointDAO;

    private Message message = new Message();

    public Message addUserPoint(UserPoint userPoint){
        message.clear();
        if (userPoint.getPoint()==null||userPoint.getPoint()==0){
            message.setMessage(Status.ILLEGAL_PARAMS);
            message.setResult(false);
        }
        else {
            String userID = UUID.randomUUID().toString();
            Date d = new Date();
            System.out.println("----------------"+d);
            System.out.println("----------------"+userID);
            userPoint.setUserID(userID);
            //userPoint.setPointDate(d);
            if (userPointDAO.addUserPoint(userPoint))
            {
                message.setMessage(Status.RETURN_OK);
                message.setResult(true);
            }
            else{
                message.setMessage(Status.INNER_ERROR);
                message.setResult(false);
            }
        }
        return message;

    }
}
