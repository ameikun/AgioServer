package com.cqu.agio.controller.web;

import com.cqu.agio.common.Constants;
import com.cqu.agio.common.Message;
import com.cqu.agio.entity.User;
import com.cqu.agio.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;
import java.util.Map;
@Controller
@RequestMapping("/")
public class PersonalController {
    private static Logger logger = Logger.getLogger(PersonalController.class);
    @Inject
    private UserService userService;

    @RequestMapping("imageload")
    public String personal(Map<String,Object> model, String userID){
        // put user information
        Message usermsg = userService.getUserByID(userID);
        if ( usermsg.isSuccess() ) {
            User user = (User) usermsg.getResult();
            if ( user.getProfileImageUrl() == null || user.getProfileImageUrl().equals("") ) {
                user.setProfileImageUrl(Constants.HEAD_IMAGE_PATH + "default.jpg");
            }
            else
                user.setProfileImageUrl(Constants.HEAD_IMAGE_PATH+user.getProfileImageUrl());
            model.put("user", user);
        }

        return "imageload";
    }
}
