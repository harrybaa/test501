package com.bbs.service.impl;

import java.util.List;

import com.bbs.dao.UserDao;
import com.bbs.model.User;
import com.bbs.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	@Override
	public boolean addUser(User user) {
		return userDao.addUser(user);

	}

	@Override
	public boolean loginValidate(User user) {
		// TODO Auto-generated method stub
		return userDao.loginValidate(user);
	}

	@Override
	public List<User> showAllUser() {
		// TODO Auto-generated method stub
		return userDao.showAllUser();
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		userDao.deleteUser(user);
	}

	@Override
	public User showUserById(int id) {
		// TODO Auto-generated method stub
		return userDao.showUserById(id);
	}

	@Override
	public void modifyUser(User user) {
		// TODO Auto-generated method stub
		userDao.modifyUser(user);
	}

}
