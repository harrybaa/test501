package com.bbs.action.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bbs.model.User;
import com.bbs.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class ShowUserAction extends ActionSupport {
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String execute() throws Exception {
		List<User> list = userService.showAllUser();
		 HttpServletRequest request = ServletActionContext.getRequest();
		 request.setAttribute("list", list);
		return SUCCESS;
	}
}
