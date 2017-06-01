package com.cqu.agio.controller.json;

import com.cqu.agio.entity.StoreActivity;
import com.cqu.agio.service.StoreActivityService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String addStoreActivity(StoreActivity storeActivity)
    {
        logger.info("addStoreActivity"+storeActivity);
        boolean result = storeActivityService.addStoreActivity(storeActivity).isSuccess();
        return result == true ? "storemainpage/about" : "error";
    }
}
