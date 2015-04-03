package com.bbs.service;

import java.util.List;


import com.bbs.model.BbsAnswer;

public interface BbsAnswerService {
	public void addBbsAnswer(BbsAnswer bbsAnswer);
	public List<BbsAnswer> allBbsAnswer(BbsAnswer bbsAnswer);
}
