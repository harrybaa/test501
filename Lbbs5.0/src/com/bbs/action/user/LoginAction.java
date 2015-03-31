package com.bbs.action.user;

import java.util.Map;

import com.bbs.model.User;
import com.bbs.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport {
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

	@SuppressWarnings("unchecked")
	public String execute() throws Exception {

		if (userService.loginValidate(user)) {
			Map map = (Map) ActionContext.getContext().get("request");
			map.put("user", user);
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
}
