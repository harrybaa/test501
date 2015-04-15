package com.bbs.action.bbs;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bbs.model.Bbs;
import com.bbs.service.BbsService;
import com.opensymphony.xwork2.Action;

public class ClassifyAction implements Action {

	private Bbs bbs;
	public Bbs getBbs() {
		return bbs;
	}

	public void setBbs(Bbs bbs) {
		this.bbs = bbs;
	}

	private BbsService bbsService;	

	public BbsService getBbsService() {
		return bbsService;
	}

	public void setBbsService(BbsService bbsService) {
		this.bbsService = bbsService;
	}

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Bbs> all = bbsService.classify(bbs);
		System.out.println(all.size());
		request.setAttribute("all", all);
		return SUCCESS;
	}

}
