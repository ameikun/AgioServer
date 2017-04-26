package com.cqu.agio.dao;

import com.cqu.agio.entity.User;
import org.springframework.stereotype.Component;

import javax.inject.Inject;


@Component
public class UserDAO {

    @Inject
    private BaseDAO baseDAO;

	public boolean addUser( User user){
        return baseDAO.save(user);
	}

	public boolean updateUser(User user){
		return baseDAO.update(user);
	}
	/**
	 * 根据所给的用户别名获取User
	 * @param nickname
	 * @return
	 */
	public User getUserByNickname(String nickname ){
		String hsql="from User user where user.nickname = ?";
		return (User) baseDAO.uniqueResult(hsql,nickname);

	}

	public User getUserByID(String userID ){
		String hsql="from User user where user.userID = ?";
		return (User) baseDAO.uniqueResult(hsql,userID);

	}

	public long getUserCount(){
        String hsql="select count(*) from User user";
		return baseDAO.getCount(hsql);
    }
    public boolean isUserExistByName(String nickname){
		return getUserByNickname(nickname) != null ? true : false;
	}
	public boolean isUserExistByID(String userID){
		return getUserByID(userID) != null ? true : false;
	}
}
