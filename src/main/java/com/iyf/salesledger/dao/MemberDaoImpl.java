package com.iyf.salesledger.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyf.salesledger.common.security.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSessionTemplate sst; 
	
	@Override
	public Member selectOne(String username) {
		return sst.selectOne("memberns", username);
	}

}
