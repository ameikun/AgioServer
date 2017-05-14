package com.cqu.agio.controller.json;

import com.cqu.agio.entity.StoreGood;
import com.cqu.agio.service.GoodsService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/14.
 */
@Controller
@RequestMapping("/store")
public class GoodsController {
    private static Logger logger = Logger.getLogger(GoodsController.class);
    @Inject
    //private Message message;
    private GoodsService goodsService;
    @RequestMapping(value = "/addGoods")
    public String addGoods(StoreGood storeGood) {
        logger.info("addGoods:"+storeGood);
        boolean result =  goodsService.addGoods(storeGood).isSuccess();
        return result == true ? "sellerpage" : "login";//页面跳转，成功刷新页面，失败暂定跳转至登录页面
    }
}
