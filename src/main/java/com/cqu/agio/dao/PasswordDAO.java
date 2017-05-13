package com.cqu.agio.dao;

import com.cqu.agio.common.LoginType;
import com.cqu.agio.entity.Password;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

@Component
public class PasswordDAO {
    @Inject
    private BaseDAO baseDAO;

    public boolean addPassword(Password pd){
        return baseDAO.save(pd);
    }
    public boolean updatePassword(Password pd){
        return baseDAO.update(pd);
    }

    public Password getPassword(int type,String account){
        String typename = "nickname";
        if(type == LoginType.LOGIN_TYPE_NICKNAME.getCode())
            typename = "nickname";
        if(type == LoginType.LOGIN_TYPE_PHONE.getCode())
            typename = "phone";
        if (type == LoginType.LOGIN_TYPE_EMAIL.getCode())
            typename = "email";
        String hsql = "from Password password where password."+typename+" = ?";
        return (Password) baseDAO.uniqueResult(hsql,account);
    }

    public Password getPassword(String account){
        String hsql = "from Password password where password.nickname = ?";
        return (Password) baseDAO.uniqueResult(hsql,account);
    }

}
