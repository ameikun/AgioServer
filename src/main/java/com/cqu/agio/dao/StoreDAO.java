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
    public boolean addStore(Store store){return baseDAO.save(store);}
}
