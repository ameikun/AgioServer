package com.cqu.agio.dao;

import com.cqu.agio.entity.Store;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/15.
 */
@Component
public class StoreDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addStore(Store store)
    {
        return baseDAO.save(store);
    }
    public boolean updateStore(Store store)
    {
        return baseDAO.update(store);
    }
    /***
     * 根据所给的店铺名获取店铺
     */
    public Store getStoreByName(String storeName)
    {
        String hsql="from Store store where store.shopName = ?";
        return (Store)baseDAO.uniqueResult(hsql,storeName);
    }
    public Store getStoreByID(String storeID)
    {
        String hsql="from Store store where store.storeID = ?";
        return (Store)baseDAO.uniqueResult(hsql,storeID);
    }
}
