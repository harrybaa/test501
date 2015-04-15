package com.bbs.dao.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.bbs.dao.BbsDao;
import com.bbs.model.Bbs;
import com.bbs.model.Board;
import com.ibatis.sqlmap.client.SqlMapClient;

public class BbsDaoImpl implements BbsDao {
	private SqlMapClient client;//是对数据库的操作
    private Board board;
    private Bbs bbs;
	public SqlMapClient getClient() {
		return client;
	}

	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	public Board getBoard() {
		return board;
	}

	public void setBoard(Board board) {
		this.board = board;
	}

	public Bbs getBbs() {
		return bbs;
	}

	public void setBbs(Bbs bbs) {
		this.bbs = bbs;
	}

	@Override
	public boolean add(Bbs bbs) {
		try{
			bbs.setSendtime(new Date());
			client.insert("bbsadd",bbs);
				return true;
		} catch (SQLException e){
			e.printStackTrace();
		}
		return false;

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Bbs> showBbs() {
		List<Bbs> list = null;
		try {
			list = (List<Bbs>) client.queryForList("bbssearch");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Bbs SelectById(Bbs bbs) {
		try{	
			
			Bbs b = (Bbs) client.queryForObject("bbsshowbyid",bbs);
			System.out.println(b);
			if (b != null){
				System.out.println(b.getSendtime());
				return b;
			}
		} catch (SQLException e){
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean DeleteById(Bbs bbs) {
		try{
			Bbs b = (Bbs) client.queryForObject("bbsdelete", bbs);
			if (b != null){
				return true;
			}
		} catch (SQLException e){
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Bbs> classify(Bbs bbs) {
		List<Bbs> list = null;
        try{	
        	list = (List<Bbs>) client.queryForList("classify",bbs);
        	System.out.println(list.size()+" s");
		} catch (SQLException e){
			e.printStackTrace();
		}
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Bbs> showByAu(Board board) {
		List<Bbs> list = null;
		try {
			Board b = (Board) client.queryForObject("findboard", board);
			System.out.println(b.getBoardid());
			bbs.setBoardId(b.getBoardid());
			list =(List<Bbs>) client.queryForList("showbyau", bbs);
			System.out.println(list.size());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}


}
