package com.cqu.agio.service;

import com.cqu.agio.common.Message;
import com.cqu.agio.common.Status;
import com.cqu.agio.dao.CouponDAO;
import com.cqu.agio.entity.Coupon;
import org.springframework.stereotype.Component;

import javax.inject.Inject;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Amei on 2017/5/16.
 */
@Component
public class CouponService {
    @Inject
    private CouponDAO couponDAO;
    private Message message = new Message();
    public Message addCoupon(Coupon coupon)
    {
        message.clear();
        if (coupon.getCouponLimit()==null||coupon.getCouponLimit()==0)
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
            message.setResult(false);
        }
        if (coupon.getExpireDate()==null)
        {
            message.setMessage(Status.ILLEGAL_PARAMS);
            message.setResult(false);
        }
        else {
            String userID = UUID.randomUUID().toString();
            Date d = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String receiveDate = sdf.format(d);
            coupon.setUserID(userID);
            coupon.setReceiveDate(receiveDate);
            if (couponDAO.addCoupon(coupon))
            {
                message.setMessage(Status.RETURN_OK);
                message.setResult(true);
            }
            else {
                message.setMessage(Status.INNER_ERROR);
                message.setResult(false);
            }
        }

        return message;
    }
}
