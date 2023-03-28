package com.iyf.salesledger.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyf.salesledger.model.EmpPool;

@Repository
public class EmpPoolDaoImpl implements EmpPoolDao {

	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public EmpPool selectOne(long emp_pool_id) {
		return sst.selectOne("empPoolns.selectOne", emp_pool_id);
	}
	
	@Override
	public EmpPool findByNameAndPhoneNumber(String name, String phonenumber) {
		Map<String, Object> params = new HashMap<>();
		params.put("name", name);
		params.put("phonenumber", phonenumber);
		return sst.selectOne("empPoolns.findByNameAndPhoneNumber", params);
	}
	
	@Override
	public List<EmpPool> list() {
		return sst.selectList("empPoolns.list");
	}

	@Override
	public void update(EmpPool empPool) {
		sst.update("empPoolns.update", empPool);
	}

	@Override
	public void delete(long emp_pool_id) {
		sst.delete("empPoolns.delete", emp_pool_id);
	}

	@Override
	public void insert(EmpPool empPool) {
		sst.insert("empPoolns.insert", empPool);
	}

	
}
