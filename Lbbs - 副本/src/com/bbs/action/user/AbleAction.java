package com.bbs.action.user;

import java.util.Map;

import com.bbs.model.User;
import com.bbs.service.UserService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class AbleAction implements Action {

	private User user;
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	@Override
	public String execute() throws Exception {
		Map map = (Map) ActionContext.getContext().get("session");
	    User user = (User) map.get("user");
	    if(user.getAble()==2){
	    	System.out.println(user.getAble());
	    	return SUCCESS;
	    }
	    else
	    	return ERROR;
	}
}
