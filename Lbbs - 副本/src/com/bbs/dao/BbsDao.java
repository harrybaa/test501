package com.bbs.dao;

import java.util.List;

import com.bbs.model.Bbs;
import com.bbs.model.Board;

public interface BbsDao {
	public boolean add(Bbs bbs);

	public List<Bbs> showBbs();

	public Bbs SelectById(Bbs bbs);
	
	public boolean DeleteById(Bbs bbs);
	
	public List<Bbs> classify(Bbs bbs);
	
	public List<Bbs> showByAu(Board board);
}
