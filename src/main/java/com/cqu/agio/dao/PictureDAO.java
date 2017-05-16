package com.cqu.agio.dao;

import com.cqu.agio.entity.Picture;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/16.
 */
@Component
public class PictureDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addPicture(Picture picture)
    {
        return baseDAO.save(picture);
    }
}
