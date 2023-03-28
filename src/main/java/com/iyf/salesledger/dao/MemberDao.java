package com.iyf.salesledger.dao;

import com.iyf.salesledger.common.security.Member;

public interface MemberDao {
	Member selectOne(String username);
}
