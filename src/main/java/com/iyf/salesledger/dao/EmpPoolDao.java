package com.iyf.salesledger.dao;

import java.util.List;
import java.util.Map;

import com.iyf.salesledger.model.EmpPool;

public interface EmpPoolDao {

	EmpPool selectOne(long emp_pool_id);
	
	EmpPool findByNameAndPhoneNumber(String name, String phonenumber);
	
	List<EmpPool> list();
	
	void update(EmpPool empPool);
	
	void delete(long emp_pool_id);
	
	void insert(EmpPool empPool);
}
