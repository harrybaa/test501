package com.bbs.dao;

import java.util.List;

import com.bbs.model.Bbs;

public interface BbsDao {
	public boolean add(Bbs bbs);

	public List<Bbs> showBbs();

	public Bbs SelectById(Bbs bbs);
	
	public boolean DeleteById(Bbs bbs);
}
