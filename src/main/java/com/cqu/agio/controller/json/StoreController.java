package com.cqu.agio.controller.json;

import com.cqu.agio.entity.Store;
import com.cqu.agio.service.StoreService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/15.
 */
@Controller
@RequestMapping("/views")
public class StoreController {
    private static Logger logger = Logger.getLogger(StoreController.class);
    @Inject
    private StoreService storeService;

    @RequestMapping(value = "/addStore")
    public String addStore(Store store){
        logger.info("addStore:"+store);
        boolean result = storeService.addStore(store).isSuccess();
        return result == true ? "store" : "error";
    }
}
