package com.bbs.dao.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.bbs.dao.BbsAnswerDao;
import com.bbs.model.Bbs;
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

	@SuppressWarnings("unchecked")
	@Override
	public List<BbsAnswer> allBbsAnswer(BbsAnswer bbsAnswer) {
		List<BbsAnswer> list = null;
		try {
			System.out.println(bbsAnswer.getRootId());
			list = (List<BbsAnswer>) client.queryForList("allbbsanswer", bbsAnswer);
			System.out.println(list.size());
			System.out.println(bbsAnswer.getRootId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
