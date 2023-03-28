package com.iyf.salesledger.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyf.salesledger.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public User select(String id) {
		// TODO Auto-generated method stub
		return sst.selectOne("userns.select",id);
	}

	@Override
	public int insert(User user) {
		// TODO Auto-generated method stub
		return sst.insert("userns.insert",user);
	}

	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return sst.selectList("userns.list");
	}

	@Override
	public int userPermit(String username) {
		// TODO Auto-generated method stub
		return sst.update("userns.userPermit", username);
	}

	@Override
	public int authoritySetting(User user) {
		// TODO Auto-generated method stub
		return sst.update("userns.authoritySetting", user);
	}

}
