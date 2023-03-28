package com.iyf.salesledger.common.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.iyf.salesledger.dao.MemberDao;

import lombok.Setter;

public class MemberUserDetailsService implements UserDetailsService {
	
	@Setter(onMethod_ = @Autowired)
	private MemberDao memberDao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Member member = memberDao.selectOne(username);
		
		if (member == null) {
			throw new UsernameNotFoundException(username);
		}
		return new MemberUser(member);
	}

}
