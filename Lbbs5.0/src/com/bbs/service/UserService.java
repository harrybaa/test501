package com.bbs.service;

import java.util.List;

import com.bbs.model.User;

public interface UserService {
	public boolean addUser(User user);
	public boolean loginValidate(User user);
	public List<User> showAllUser();
	public void deleteUser(User user);
	public User showUserById(int id);
	public void modifyUser(User user);
}
