package com.cqu.agio.service;

import com.cqu.agio.common.Message;
import com.cqu.agio.common.Status;
import com.cqu.agio.dao.StoreActivityDAO;
import com.cqu.agio.entity.StoreActivity;
import org.springframework.stereotype.Component;

import javax.inject.Inject;
import java.util.UUID;

/**
 * Created by Amei on 2017/5/16.
 */
@Component
public class StoreActivityService {
    @Inject
    private StoreActivityDAO storeActivityDAO;
    private Message message = new Message();
    public Message addStoreActivity(StoreActivity storeActivity)
    {
        message.clear();
        if (storeActivity.getSactivityTitle()==null&&storeActivity.getSactivityInf()==null)
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
            message.setResult(false);
        }
        if (storeActivity.getSactivityTitle()==""&&storeActivity.getSactivityInf()=="")
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
            message.setResult(false);
        }
        else {
            String activityID = UUID.randomUUID().toString();
            String storeID = UUID.randomUUID().toString();//临时设置，应为登录店长的店铺id
            storeActivity.setActivityID(activityID);
            storeActivity.setStoreID(storeID);
            if (storeActivityDAO.addStoreActivity(storeActivity))
            {
                message.setMessage(Status.RETURN_OK);
                message.setResult(true);
            }
            else {
                message.setMessage(Status.INNER_ERROR);
                message.setResult(false);
            }
        }
        return message;
    }
}
