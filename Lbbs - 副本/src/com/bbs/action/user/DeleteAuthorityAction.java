package com.bbs.action.user;

import com.bbs.model.User;
import com.bbs.service.UserService;
import com.opensymphony.xwork2.Action;

public class DeleteAuthorityAction implements Action {

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
	
	@Override
	public String execute() throws Exception {
		userService.deleteAuthority(user);
		return SUCCESS;
	}

}
