package com.iyf.salesledger.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyf.salesledger.common.security.Member;
import com.iyf.salesledger.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public Member selectOne(String username) {
		return memberDao.selectOne(username);
	}	

}
