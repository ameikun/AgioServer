package com.cqu.agio.dao;

import com.cqu.agio.entity.UserCollectStore;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/16.
 */
@Component
public class CollectStoreDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addCollectStore(UserCollectStore userCollectStore)
    {
        return baseDAO.save(userCollectStore);
    }
}
