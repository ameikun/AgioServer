package com.cqu.agio.service;

import com.cqu.agio.bean.StoreGoodPk;
import com.cqu.agio.common.Message;
import com.cqu.agio.common.Status;
import com.cqu.agio.dao.StoreGoodDAO;
import com.cqu.agio.entity.StoreGood;
import org.springframework.stereotype.Component;

import javax.inject.Inject;
import java.util.UUID;

/**
 * Created by Amei on 2017/5/14.
 */
@Component
public class GoodsService {

    @Inject
    private StoreGoodDAO storeGoodDAO;



    private Message message = new Message();
    public Message addGoods(StoreGood storeGood)
    {
        message.clear();
        if (storeGood.getGoodName()==null||storeGood.getPrice()==null)
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
            message.setResult(false);
        }
        if(storeGood.getGoodName()==""||storeGood.getPrice()=="")
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
            message.setResult(false);
        }
        else {
            String storeID = UUID.randomUUID().toString();
            String goodID = UUID.randomUUID().toString();
            StoreGoodPk storeGoodPk = new StoreGoodPk();
            storeGoodPk.setStoreID(storeID);
            storeGoodPk.setGoodID(goodID);
            storeGood.setStoreGoodPk(storeGoodPk);
            if (storeGoodDAO.addStoreGood(storeGood))
            {
                message.setMessage(Status.RETURN_OK);
                message.setResult(true);
                System.out.print("-------------------"+storeGood.getGoodName());
            }
            else{
                message.setMessage(Status.INNER_ERROR);
                message.setResult(false);
            }
        }
        return message;
    }

}
