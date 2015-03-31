package com.bbs.service.impl;

import java.util.List;

import com.bbs.dao.BbsDao;
import com.bbs.model.Bbs;
import com.bbs.service.BbsService;

public class BbsServiceImpl implements BbsService {
	
	private BbsDao bbsDao;
	
	public BbsDao getBbsDao() {
		return bbsDao;
	}

	public void setBbsDao(BbsDao bbsDao) {
		this.bbsDao = bbsDao;
	}

	@Override
	public void add(Bbs bbs) {
		bbsDao.add(bbs);
	}

	@Override
	public List<Bbs> showBbs() {
		return bbsDao.showBbs();
	}

	@Override
	public Bbs selectById(Bbs bbs) {
		System.out.println(bbsDao.SelectById(bbs));
		return bbsDao.SelectById(bbs);
	}

	@Override
	public void DeleteById(Bbs bbs) {
		bbsDao.DeleteById(bbs);
	}


}
