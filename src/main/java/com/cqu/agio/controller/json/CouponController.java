package com.cqu.agio.controller.json;

import com.cqu.agio.entity.Coupon;
import com.cqu.agio.service.CouponService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
    public ModelAndView addCoupon(Coupon coupon)
    {
        ModelAndView modelAndView = new ModelAndView("test");
        logger.info("addCoupon"+coupon);
        boolean result = couponService.addCoupon(coupon).isSuccess();
        logger.info("----------user优惠券信息:" + coupon);
        if(result)
            modelAndView.addObject(coupon);
        return modelAndView;
    }
    /*public String addCoupon(Coupon coupon)
    {
        logger.info("addCoupon"+coupon);
        boolean result = couponService.addCoupon(coupon).isSuccess();
        return result == true ? "unitetest" : "error";
    }*/
}
