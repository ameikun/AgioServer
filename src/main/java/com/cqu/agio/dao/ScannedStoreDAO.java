package com.cqu.agio.dao;

import com.cqu.agio.entity.UserScannedStore;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/16.
 */
@Component
public class ScannedStoreDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addScannedStore(UserScannedStore userScannedStore)
    {
        return baseDAO.save(userScannedStore);
    }
}
