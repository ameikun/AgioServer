package com.cqu.agio.dao;

import com.cqu.agio.entity.StoreActivity;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/16.
 */
@Component
public class StoreActivityDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addStoreActivity(StoreActivity storeActivity)
    {return baseDAO.save(storeActivity);}
}
