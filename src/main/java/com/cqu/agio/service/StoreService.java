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

    /**
    *添加店铺
    * @return
    */
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
    /***
     * 查找同一个地址的店铺是否存在
     */
    public Message isStoreExit(String shopName,String shopAddress)
    {
        message.clear();
        if (shopName == null||shopName.equals(""))
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
        }
        if (shopAddress == null||shopAddress.equals(""))
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
        }
        else {
            Store store = storeDAO.getStoreByName(shopName);
            if(store == null)
            {
                message.setMessage(Status.NO_RESULT);
            }
            else {
                if(store.getShopAddress().equals(shopAddress))
                    message.setMessage(Status.RETURN_OK);
                else
                    message.setMessage(Status.NO_RESULT);
            }
        }
        return message;
    }

}
