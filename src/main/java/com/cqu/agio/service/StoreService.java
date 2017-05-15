package com.cqu.agio.service;

import com.cqu.agio.common.Message;
import com.cqu.agio.common.Status;
import com.cqu.agio.dao.StoreDAO;
import com.cqu.agio.entity.Store;
import org.springframework.stereotype.Component;

import javax.inject.Inject;
import java.util.UUID;

/**
 * Created by Amei on 2017/5/15.
 */
@Component
public class StoreService {
    @Inject
    private StoreDAO storeDAO;

    private Message message = new Message();

    public Message addStore(Store store){
        message.clear();
        if (store.getShopName()==null)
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
            message.setResult(false);
        }
        if(store.getShopName()=="")
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
            message.setResult(false);
        }
        else {
            String storeID = UUID.randomUUID().toString();
            String shopkeeperID = UUID.randomUUID().toString();//原理上获取当前用户id
            //String shopimageID = UUID.randomUUID().toString();
            store.setStoreID(storeID);
            store.setShopkeeperID(shopkeeperID);
            //store.setShopimageID(shopimageID);
            if (storeDAO.addStore(store))
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
