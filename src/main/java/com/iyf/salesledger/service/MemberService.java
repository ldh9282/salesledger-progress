package com.iyf.salesledger.service;

import com.iyf.salesledger.common.security.Member;

public interface MemberService {
	Member selectOne(String username);
}
