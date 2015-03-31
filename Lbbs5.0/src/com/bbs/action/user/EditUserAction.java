package com.bbs.action.user;

import com.bbs.model.User;
import com.bbs.service.UserService;
import com.opensymphony.xwork2.Action;

public class EditUserAction implements Action {
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

	public String execute() throws Exception {
		userService.modifyUser(user);
		return SUCCESS;
	}

}
