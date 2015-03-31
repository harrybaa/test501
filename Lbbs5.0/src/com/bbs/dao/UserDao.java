package com.bbs.dao;

import java.util.List;

import com.bbs.model.User;


public interface UserDao {
	public boolean addUser(User user);
	public boolean loginValidate(User user);
	public List<User> showAllUser();
	public boolean deleteUser(User user);
	public User showUserById(int id);
	public void modifyUser(User user);
}
