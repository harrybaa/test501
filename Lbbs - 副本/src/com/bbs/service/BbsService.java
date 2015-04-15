package com.bbs.service;

import java.util.List;

import com.bbs.model.Bbs;
import com.bbs.model.Board;

public interface BbsService {
	public void add(Bbs bbs);

	public List<Bbs> showBbs();
	
	public Bbs selectById(Bbs bbs);
	
	public void DeleteById(Bbs bbs);
 
	public List<Bbs> classify(Bbs bbs);
	
	public List<Bbs> showByAu(Board board);
}
