package com.cqu.agio.controller.json;

import com.cqu.agio.entity.UserPoint;
import com.cqu.agio.service.UserPointService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/15.
 */
@Controller
@RequestMapping("/unit")
public class UserPointController {
    private static Logger logger = Logger.getLogger(UserPointController.class);
    @Inject
    private UserPointService userPointService;

    @RequestMapping(value = "/addUserPoint")
    public String addUserPoint(UserPoint userPoint)
    {
        logger.info("addUserPoint:"+userPoint);
        boolean result = userPointService.addUserPoint(userPoint).isSuccess();
        return result == true ? "unitetest" : "error";

    }
}
