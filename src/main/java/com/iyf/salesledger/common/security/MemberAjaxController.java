package com.iyf.salesledger.common.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.iyf.salesledger.service.MemberService;

@RestController
public class MemberAjaxController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/member.ajax/username/{username}")
	public Member retrieveMemberByUsername(@PathVariable String username) {
		return memberService.selectOne(username);
	}
}
