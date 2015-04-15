package com.bbs.action.bbs;

import java.util.List;
import java.util.Map;


import com.bbs.model.Bbs;
import com.bbs.model.User;
import com.bbs.service.BbsService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class SelectByIdAction implements Action {

	private int id;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
	    Map session = actionContext.getSession();
		bbs = bbsService.selectById(bbs);
		session.put("rootId", bbs.getId());
		return SUCCESS;
	}

}
