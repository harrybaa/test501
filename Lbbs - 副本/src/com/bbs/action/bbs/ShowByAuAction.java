package com.bbs.action.bbs;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bbs.model.Bbs;
import com.bbs.model.Board;
import com.bbs.model.User;
import com.bbs.service.BbsService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class ShowByAuAction implements Action {

	private Board board;
    private BbsService bbsService;
    
	public BbsService getBbsService() {
		return bbsService;
	}

	public void setBbsService(BbsService bbsService) {
		this.bbsService = bbsService;
	}

	public Board getBoard() {
		return board;
	}

	public void setBoard(Board board) {
		this.board = board;
	}

	@Override
	public String execute() throws Exception {
		 @SuppressWarnings("rawtypes")
		 Map map = (Map) ActionContext.getContext().get("session");
		 User user = (User) map.get("user");
		 board.setMaster(user.getName());
		 System.out.println(user.getName());
		 HttpServletRequest request = ServletActionContext.getRequest();
		 List<Bbs> all = bbsService.showByAu(board);
		 request.setAttribute("all", all);
		 return SUCCESS;
	}

}
