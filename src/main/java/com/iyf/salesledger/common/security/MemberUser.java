package com.iyf.salesledger.common.security;

import java.util.stream.Collectors;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class MemberUser extends User {

	private static final long serialVersionUID = 1L;
	
	private Member member;
	
	public MemberUser(Member member) {
		super(member.getUsername(),
				member.getPassword(),
				member.getAuthorities()
				          .stream()  
				          .map(auth -> new SimpleGrantedAuthority(auth.getAuthority())) 
				          .collect(Collectors.toList())  
		);
		this.member = member;
	}
	
	
	
	
}
