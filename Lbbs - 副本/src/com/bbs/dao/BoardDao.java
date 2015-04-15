package com.bbs.dao;

import java.util.List;

import com.bbs.model.Board;

public interface BoardDao {
	public boolean addBoard(Board board);

	public List<Board> showBoard();

	public boolean deleteBoard(Board board);
}
