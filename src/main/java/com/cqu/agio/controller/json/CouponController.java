package com.cqu.agio.controller.json;

import com.cqu.agio.entity.Coupon;
import com.cqu.agio.service.CouponService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/16.
 */
@Controller
@RequestMapping("/unit")
public class CouponController {
    private static Logger logger = Logger.getLogger(CouponController.class);
    @Inject
    private CouponService couponService;
    @RequestMapping(value = "/addCoupon")
    public String addCoupon(Coupon coupon)
    {
        logger.info("addCoupon"+coupon);
        boolean result = couponService.addCoupon(coupon).isSuccess();
        return result == true ? "unitetest" : "error";
    }
}
