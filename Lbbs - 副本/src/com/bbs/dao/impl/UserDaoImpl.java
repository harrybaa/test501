package com.bbs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.bbs.dao.UserDao;
import com.bbs.model.User;
import com.ibatis.sqlmap.client.SqlMapClient;


public class UserDaoImpl implements UserDao {
	
	private SqlMapClient client;//是对数据库的操作

	public SqlMapClient getClient() {
		return client;
	}

	public void setClient(SqlMapClient client) {
		this.client = client;
	}
	
	@Override
	public boolean addUser(User user) {
		try{
			client.insert("useradd",user);
				return true;
		} catch (SQLException e){
			e.printStackTrace();
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean loginValidate(User user) {
		boolean b = false;
		try {
			List<User> list = (List<User>) client.queryForList("checkUser", user);
			if (list.size() > 0) {
				user.setAble(((User) list.get(0)).getAble());
				user.setName(((User) list.get(0)).getName());
				System.out.println(user.getAble()+user.getName());
				b = true;
			} else {
				b = false;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return b;
	}

	@SuppressWarnings("unchecked")
	@Override
	public  List<User> showAllUser() {
		List<User> list = null;
		try {
			list = (List<User>) client.queryForList("usersearch");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean deleteUser(User user) {
		try{
			User u = (User) client.queryForObject("userdelete", user);
			if (u != null){
				return true;
			}
		} catch (SQLException e){
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public User showUserById(int id) {
		try{
			User u = (User) client.queryForObject("usershowbyid");
			if (u != null){
				return u;
			}
		} catch (SQLException e){
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void modifyUser(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean addAuthority(User user) {
		try{
			User u = (User) client.queryForObject("addauthority", user);
			if (u != null){
				return true;
			}
		} catch (SQLException e){
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteAuthority(User user) {
		try{
			User u = (User) client.queryForObject("deleteauthority", user);
			if (u != null){
				return true;
			}
		} catch (SQLException e){
			e.printStackTrace();
		}
		return false;
	}
}
