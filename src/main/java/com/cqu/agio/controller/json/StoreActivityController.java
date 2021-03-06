package com.cqu.agio.controller.json;

import com.cqu.agio.entity.StoreActivity;
import com.cqu.agio.service.StoreActivityService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/16.
 */
@Controller
@RequestMapping("/views/storemainpage")
public class StoreActivityController {
    private static Logger logger = Logger.getLogger(StoreActivityController.class);
    @Inject
    private StoreActivityService storeActivityService;
    @RequestMapping(value = "/addStoreActivity")
    public ModelAndView addStoreActivity(StoreActivity storeActivity)
    {
        ModelAndView modelAndView = new ModelAndView("storemainpage/about");
        logger.info("addStoreActivity"+storeActivity);
        boolean result = storeActivityService.addStoreActivity(storeActivity).isSuccess();
        logger.info("--------------店铺活动："+storeActivity);
        if(result)
            modelAndView.addObject(storeActivity);
        return modelAndView;
    }
   /* public String addStoreActivity(StoreActivity storeActivity)
    {
        logger.info("addStoreActivity"+storeActivity);
        boolean result = storeActivityService.addStoreActivity(storeActivity).isSuccess();
        return result == true ? "storemainpage/about" : "error";
    }*/
}
