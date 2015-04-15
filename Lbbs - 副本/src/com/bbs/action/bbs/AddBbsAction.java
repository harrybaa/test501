package com.bbs.action.bbs;

import java.util.Map;

import com.bbs.model.Bbs;
import com.bbs.model.User;
import com.bbs.service.BbsService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class AddBbsAction implements Action {

	private Bbs bbs;
	private BbsService bbsService;
	
	public Bbs getBbs() {
		return bbs;
	}

	public void setBbs(Bbs bbs) {
		this.bbs = bbs;
	}

	public BbsService getBbsService() {
		return bbsService;
	}

	public void setBbsService(BbsService bbsService) {
		this.bbsService = bbsService;
	}

	@Override
	public String execute() throws Exception {
		Map map = (Map) ActionContext.getContext().get("session");
	    User user = (User) map.get("user");
	    bbs.setSender(user.getName());
	    System.out.println(bbs.getSender());
		bbsService.add(bbs);
		return SUCCESS;
	}

}
