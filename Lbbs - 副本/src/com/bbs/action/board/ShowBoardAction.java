package com.bbs.action.board;

import java.util.Map;

import com.bbs.model.Board;
import com.bbs.service.BoardService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class ShowBoardAction implements Action {
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
	
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		@SuppressWarnings("rawtypes")
		Map map = (Map) ActionContext.getContext().get("request");
		map.put("list", boardService.showBoard());
		return SUCCESS;
	}

}
