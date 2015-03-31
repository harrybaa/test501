package com.bbs.action.board;

import com.bbs.model.Board;
import com.bbs.service.BoardService;
import com.opensymphony.xwork2.Action;

public class DeleteAction implements Action {
	private Board board;
	private BoardService boardService;
	
	public Board getBoard() {
		return board;
	}

	public void setBoard(Board board) {
		this.board = board;
	}

	public BoardService getBoardService() {
		return boardService;
	}

	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	@Override
	public String execute() throws Exception {
		boardService.deleteBoard(board);
		return SUCCESS;
	}

}
