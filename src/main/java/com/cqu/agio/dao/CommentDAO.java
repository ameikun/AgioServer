package com.cqu.agio.dao;

import com.cqu.agio.entity.Comment;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

/**
 * Created by Amei on 2017/5/16.
 */
@Component
public class CommentDAO {
    @Inject
    private BaseDAO baseDAO;
    public boolean addCooment(Comment comment)
    {
        return baseDAO.save(comment);
    }
}
