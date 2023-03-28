package com.iyf.salesledger.service;

import java.util.List;

import com.iyf.salesledger.model.User;

public interface UserService {

	User select(String id);

	int insert(User user);

	List<User> list();

	int userPermit(String username);

	int authoritySetting(User user);

}
