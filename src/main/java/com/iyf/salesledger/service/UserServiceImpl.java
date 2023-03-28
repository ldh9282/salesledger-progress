package com.iyf.salesledger.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyf.salesledger.dao.UserDao;
import com.iyf.salesledger.model.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao ud;
	@Override
	public User select(String id) {
		// TODO Auto-generated method stub
		return ud.select(id);
	}
	@Override
	public int insert(User user) {
		// TODO Auto-generated method stub
		return ud.insert(user);
	}
	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return ud.list();
	}
	@Override
	public int userPermit(String username) {
		// TODO Auto-generated method stub
		return ud.userPermit(username);
	}
	@Override
	public int authoritySetting(User user) {
		// TODO Auto-generated method stub
		return ud.authoritySetting(user);
	}

}
