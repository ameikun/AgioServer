package com.cqu.agio.controller.json;

import com.cqu.agio.common.Message;
import com.cqu.agio.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/31.
 */
@Controller
@RequestMapping("/image")
public class ImageComtroller {
    private static Logger logger = Logger.getLogger(ImageComtroller.class);
    @Inject
    private UserService service;
    private Message message;

}
