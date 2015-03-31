package com.bbs.service.impl;

import java.util.List;

import com.bbs.dao.BoardDao;
import com.bbs.model.Board;
import com.bbs.service.BoardService;

public class BoardServiceImpl implements BoardService {

	private BoardDao boardDao;
	
	public BoardDao getBoardDao() {
		return boardDao;
	}

	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}

	@Override
	public void addBoard(Board board) {
		boardDao.addBoard(board);
	}

	@Override
	public List<Board> showBoard() {
		return boardDao.showBoard();
	}

	@Override
	public void deleteBoard(Board board) {
		boardDao.deleteBoard(board);
	}

}
