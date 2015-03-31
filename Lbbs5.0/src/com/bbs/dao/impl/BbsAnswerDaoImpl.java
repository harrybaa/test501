package com.bbs.dao.impl;

import java.sql.SQLException;
import java.util.Date;

import com.bbs.dao.BbsAnswerDao;
import com.bbs.model.BbsAnswer;
import com.ibatis.sqlmap.client.SqlMapClient;

public class BbsAnswerDaoImpl implements BbsAnswerDao {

	private SqlMapClient client;//是对数据库的操作

	public SqlMapClient getClient() {
		return client;
	}

	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	@Override
	public boolean addBbsAnswer(BbsAnswer bbsAnswer) {
		try{
			bbsAnswer.setSendTime(new Date());
			client.insert("answeradd",bbsAnswer);
				return true;
		} catch (SQLException e){
			e.printStackTrace();
		}
		return false;
	}

}
