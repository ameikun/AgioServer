package com.cqu.agio.dao;

import com.cqu.agio.entity.Ad;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/13.
 */
@Component
public class AdDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addAd(Ad ad)
    {
        return baseDAO.save(ad);
    }
}
