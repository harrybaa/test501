package com.bbs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.bbs.dao.BoardDao;
import com.bbs.model.Board;
import com.ibatis.sqlmap.client.SqlMapClient;

public class BoardDaoImpl implements BoardDao {

	private SqlMapClient client;//是对数据库的操作

	public SqlMapClient getClient() {
		return client;
	}

	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	@Override
	public boolean addBoard(Board board) {
		try{
			client.insert("boardadd",board);
				return true;
		} catch (SQLException e){
			e.printStackTrace();
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Board> showBoard() {
		List<Board> list = null;
		try {
			list = (List<Board>) client.queryForList("boardsearch");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean deleteBoard(Board board) {
		try{
			Board u = (Board) client.queryForObject("boarddelete", board);
			if (u != null){
				return true;
			}
		} catch (SQLException e){
			e.printStackTrace();
		}
		return false;
	}

}
