package com.bbs.dao.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.bbs.dao.BbsDao;
import com.bbs.model.Bbs;
import com.ibatis.sqlmap.client.SqlMapClient;

public class BbsDaoImpl implements BbsDao {
	private SqlMapClient client;//是对数据库的操作

	public SqlMapClient getClient() {
		return client;
	}

	public void setClient(SqlMapClient client) {
		this.client = client;
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
				System.out.println(b.getContent());
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

}
