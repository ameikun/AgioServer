package com.cqu.agio.dao;

import com.cqu.agio.entity.Coupon;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/15.
 */
@Component
public class CouponDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addCoupon(Coupon coupon){return baseDAO.save(coupon);}
}
