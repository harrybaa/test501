package com.bbs.action.bbs;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;


import com.bbs.dao.BbsDao;
import com.bbs.model.Bbs;
import com.opensymphony.xwork2.Action;

public class ShowAllAction implements Action {

	private BbsDao bbsDao;
	
	public BbsDao getBbsDao() {
		return bbsDao;
	}

	public void setBbsDao(BbsDao bbsDao) {
		this.bbsDao = bbsDao;
	}

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Bbs> all = bbsDao.showBbs();
		request.setAttribute("all", all);
		return SUCCESS;
	}

}
