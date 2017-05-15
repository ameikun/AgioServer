package com.cqu.agio.dao;

import com.cqu.agio.entity.UserPoint;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/15.
 */
@Component
public class UserPointDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addUserPoint(UserPoint userPoint){return baseDAO.save(userPoint);}
}
