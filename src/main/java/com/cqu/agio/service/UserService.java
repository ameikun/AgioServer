package com.cqu.agio.service;

import com.cqu.agio.common.Message;
import com.cqu.agio.common.Status;
import com.cqu.agio.dao.PasswordDAO;
import com.cqu.agio.dao.UserDAO;
import com.cqu.agio.entity.Password;
import com.cqu.agio.entity.User;
import org.springframework.stereotype.Component;
import javax.inject.Inject;
import java.util.Date;
import java.util.UUID;

@Component
public class UserService {
	@Inject
	private UserDAO userDAO;
	@Inject
	private PasswordDAO passwordDAO;
	private Message message = new Message();

	public Message updateUser(User user){
		message.clear();
		if ( user != null && user.getUserID() != null && user.getNickname() != null ){
			User inner = userDAO.getUserByID(user.getUserID());
			if ( inner != null ) {
				inner.setUser(user);
				if (userDAO.updateUser(inner)) {
					message.setMessage(Status.RETURN_OK);
					message.setResult(user.getUserID());
				}
				else
					message.setMessage(Status.UPDATE_FAILED);
			}
			else {
				message.setMessage(Status.USER_NOT_EXISTED);
			}
		}
		else{ // if the information is not completed
			message = new Message(Status.ILLEGAL_PARAMS);
		}
		return message;
	}

	public Message getUser(String nickname){
		message.clear();
		if (nickname != null && !nickname.equals("")) {
			User user = userDAO.getUserByNickname(nickname);
			if (user == null)
				message = new Message(Status.NO_RESULT);
			else {
				message = new Message(Status.RETURN_OK);
				message.setResult(user);
			}
		}
		else {
			message = new Message(Status.ILLEGAL_PARAMS);
		}
		return message;
	}

	public Message getUserByID(String userID){
		message.clear();
		if (userID != null && !userID.equals("")) {
			User user = userDAO.getUserByID(userID);
			if (user == null)
				message = new Message(Status.NO_RESULT);
			else {
				message = new Message(Status.RETURN_OK);
				message.setResult(user);
			}
		}
		else {
			message = new Message(Status.ILLEGAL_PARAMS);
		}
		return message;
	}



	/**
	 * 获取所有注册的人数
	 * @return
	 */
	public Message getUserCount(){
		message.clear();
		message = new Message(Status.RETURN_OK);
		message.setResult(userDAO.getUserCount());
		return message;
	}

	public Message registerUser(User user,String password) {
		message.clear();//清空以前的数据
		if (user.getNickname() == null || password == null) {
			message.setMessage(Status.ILLEGAL_PARAMS);
			message.setResult(false);
		}
		if (user.getNickname().equals("") || password.equals("")) {
			message.setMessage(Status.ILLEGAL_PARAMS);
			message.setResult(false);
		}
		if (userDAO.isUserExistByName(user.getNickname())) {
			message.setMessage(Status.HAVE_EXISTED);
			message.setResult(false);
		}
		else {
			String id = UUID.randomUUID().toString();
			user.setUserID(id);
			Password pd = new Password();
			pd.setUserID(id);
			pd.setNickname(user.getNickname());
			pd.setPassword(password);
			pd.setUpdateDate(new Date());
			if (user.getPhone() != null && !user.getPhone().equals(""))
				pd.setPhone(user.getPhone());
			if (user.getEmail() != null && !user.getEmail().equals(""))
				pd.setEmail(user.getEmail());
			if (userDAO.addUser(user) && passwordDAO.addPassword(pd)) {
				message.setMessage(Status.RETURN_OK);
				message.setResult(true);
			}
			else {
				message.setMessage(Status.INNER_ERROR);
				message.setResult(false);
			}
		}
		return  message;
	}



	public Message login(Integer type,String account,String password){
		message.clear();
		if ( type == null || account == null || password == null || account.equals("") || password.equals("")){
			message.setMessage(Status.ILLEGAL_PARAMS);
			message.setResult(false);
		}
		else {
			Password pd = passwordDAO.getPassword(type, account);
			if (pd != null) {
				boolean ret = pd.getPassword().equals(password);
				if (ret) {
					User user = userDAO.getUserByNickname(account);
					String usertype = user.getType();
					message.setMessage(Status.RETURN_OK);
					message.setResult(pd.getUserID());
					message.put("type",usertype);
				} else {
					message.setMessage(Status.AUTH_FAILED);
					message.setResult(false);
				}
			} else {
				message.setMessage(Status.NO_RESULT);
				message.setResult(false);
			}
		}
		return message;
	}

	/**
	 * no password login
	 * @param type
	 * @param account
	 * @return
	 */
	public Message login(Integer type,String account){
		message.clear();
		if ( type == null || account == null || account.equals("")){
			message.setMessage(Status.ILLEGAL_PARAMS);
			message.setResult(false);
		}
		else {
			boolean ret = userDAO.isUserExistByID(account);
			if (ret) {
				message.setMessage(Status.RETURN_OK);
				message.setResult(true);
			} else {
				message.setMessage(Status.AUTH_FAILED);
				message.setResult(false);
			}
		}
		return message;
	}

	public Message resetPassword(String nickname,String password){
		message.clear();
		if ( nickname == null || password == null || nickname.equals("") || password.equals("")){
			message.setMessage(Status.ILLEGAL_PARAMS);
			message.setResult(false);
		}
		else {
			Password pd = passwordDAO.getPassword(nickname);
			if (pd != null) {
				pd.setPassword(password);
				if (passwordDAO.updatePassword(pd)) {
					message.setMessage(Status.RETURN_OK);
					message.setResult(pd.getUserID());
				} else {
					message.setMessage(Status.AUTH_FAILED);
					message.setResult(false);
				}
			} else {
				message.setMessage(Status.NO_RESULT);
				message.setResult(false);
			}
		}
		return message;
	}

}
