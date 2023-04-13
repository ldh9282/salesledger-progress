package com.iyf.salesledger.common.security;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.iyf.salesledger.dao.MemberDao;

import lombok.Setter;

public class MemberUserDetailsService implements UserDetailsService {
	
	@Autowired
	private MemberDao memberDao;

//	@Autowired
//	private SqlSessionTemplate sst;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Member member = memberDao.selectOne(username);
//		Member member = sst.selectOne("com.iyf.salesledger.dao.MemberDao.selectOne", username);
		if (member == null) {
			throw new UsernameNotFoundException(username);
		}
		if (member.getEnabled().equals("0")) {
			throw new DisabledException(member.getUsername() + " is disabled" );
		}
		return new MemberUser(member);
	}

}
