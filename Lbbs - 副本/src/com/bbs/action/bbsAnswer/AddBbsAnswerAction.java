package com.bbs.action.bbsAnswer;

import java.util.Map;

import com.bbs.model.BbsAnswer;
import com.bbs.model.User;
import com.bbs.service.BbsAnswerService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class AddBbsAnswerAction implements Action {

	private BbsAnswer bbsAnswer;
	private BbsAnswerService bbsAnswerService;

	public BbsAnswer getBbsAnswer() {
		return bbsAnswer;
	}

	public void setBbsAnswer(BbsAnswer bbsAnswer) {
		this.bbsAnswer = bbsAnswer;
	}

	public BbsAnswerService getBbsAnswerService() {
		return bbsAnswerService;
	}

	public void setBbsAnswerService(BbsAnswerService bbsAnswerService) {
		this.bbsAnswerService = bbsAnswerService;
	}

	@Override
	public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
	    Map session = actionContext.getSession();
	    bbsAnswer.setRootId((Integer) session.get("rootId"));
	    System.out.println(bbsAnswer.getContent());
	    Map map = (Map) ActionContext.getContext().get("session");
	    User user = (User) map.get("user");
	    System.out.println(user.getName());
	    bbsAnswer.setSender(user.getName());
		bbsAnswerService.addBbsAnswer(bbsAnswer);
		return SUCCESS;
	}

}
