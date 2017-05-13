package com.cqu.agio.dao;

import com.cqu.agio.entity.StoreGood;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/13.
 */
@Component
public class StoreGoodDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addStoreGood(StoreGood storeGood){return baseDAO.save(storeGood);}
}
