package com.bbs.service.impl;

import java.util.List;

import com.bbs.dao.BbsAnswerDao;
import com.bbs.model.BbsAnswer;
import com.bbs.service.BbsAnswerService;

public class BbsAnswerServiceImpl implements BbsAnswerService {

	private BbsAnswerDao bbsAnswerDao;
	
	public BbsAnswerDao getBbsAnswerDao() {
		return bbsAnswerDao;
	}

	public void setBbsAnswerDao(BbsAnswerDao bbsAnswerDao) {
		this.bbsAnswerDao = bbsAnswerDao;
	}

	@Override
	public void addBbsAnswer(BbsAnswer bbsAnswer) {
		bbsAnswerDao.addBbsAnswer(bbsAnswer); 
	}

	@Override
	public List<BbsAnswer> allBbsAnswer(BbsAnswer bbsAnswer) {
		return bbsAnswerDao.allBbsAnswer(bbsAnswer);
	}

}
