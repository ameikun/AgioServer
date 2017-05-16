package com.cqu.agio.dao;

import com.cqu.agio.entity.RecommendStore;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/16.
 */
@Component
public class RecommendStroeDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addRecommendStroe(RecommendStore recommendStore)
    {
        return baseDAO.save(recommendStore);
    }
}
