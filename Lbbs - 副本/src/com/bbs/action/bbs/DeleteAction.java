package com.bbs.action.bbs;

import com.bbs.model.Bbs;
import com.bbs.service.BbsService;
import com.opensymphony.xwork2.Action;

public class DeleteAction implements Action {

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
		bbsService.DeleteById(bbs);
		return SUCCESS;
	}

}
