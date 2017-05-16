package com.cqu.agio.dao;

import com.cqu.agio.entity.Price;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/16.
 */
@Component
public class PriceDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addPrice(Price price)
    {
     return baseDAO.save(price);
    }
}
