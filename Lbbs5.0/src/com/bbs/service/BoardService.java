package com.bbs.service;

import java.util.List;

import com.bbs.model.Board;

public interface BoardService {
	public void addBoard(Board board);

	public List<Board> showBoard();

	public void deleteBoard(Board board);
}
