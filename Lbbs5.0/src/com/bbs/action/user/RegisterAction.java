package com.bbs.action.user;

import java.util.regex.Pattern;

import com.bbs.model.User;
import com.bbs.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	private User user;
	private UserService userService;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void validate() {
//		if(!user.getEmail().matches("\\^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\\.[a-zA-Z0-9_-]{2,3}){1,2})$\\")){
//			this.addFieldError("user.email"," 邮箱不合法,格式如:li@a.com");
//		}
	}

	public String execute() throws Exception {
		userService.addUser(user);
		return SUCCESS;
	}
}
