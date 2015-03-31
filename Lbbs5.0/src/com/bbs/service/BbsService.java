package com.bbs.service;

import java.util.List;

import com.bbs.model.Bbs;

public interface BbsService {
	public void add(Bbs bbs);

	public List<Bbs> showBbs();
	
	public Bbs selectById(Bbs bbs);
	
	public void DeleteById(Bbs bbs);

}
