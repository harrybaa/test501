package com.bbs.dao;

import java.util.List;

import com.bbs.model.BbsAnswer;

public interface BbsAnswerDao {
	public boolean addBbsAnswer(BbsAnswer bbsAnswer);
	public List<BbsAnswer> allBbsAnswer(BbsAnswer bbsAnswer);
}
