package com.iyf.salesledger.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.iyf.salesledger.common.security.Member;
import com.iyf.salesledger.dao.MemberDao;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public Member selectOne(String username) {
		return memberDao.selectOne(username);
	}

	@Override
	public void insertMember(Member member) {
		member.setPassword(passwordEncoder.encode(member.getPassword()));
		memberDao.insertMember(member);
	}	

}
