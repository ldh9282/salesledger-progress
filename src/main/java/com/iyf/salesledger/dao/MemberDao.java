package com.iyf.salesledger.dao;

import com.iyf.salesledger.common.security.Member;
import com.iyf.salesledger.common.security.MemberAuthority;

public interface MemberDao {
	Member selectOne(String username);
	
	void insertMember(Member member);
	
	void insertAuthority(MemberAuthority memberAuthority);
}
