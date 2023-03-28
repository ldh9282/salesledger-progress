package com.iyf.salesledger.dao;

import java.util.List;

import com.iyf.salesledger.model.User;

public interface UserDao {

	User select(String id);

	int insert(User user);

	List<User> list();

	int userPermit(String username);

	int authoritySetting(User user);

}
