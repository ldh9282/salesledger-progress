package com.iyf.salesledger.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyf.salesledger.model.EmpLedger;

@Repository
public class EmpLedgerDaoImpl implements EmpLedgerDao {

	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<EmpLedger> list() {
		return sst.selectList("empLedgerns.list");
	}
	
	@Override
	public List<Map<String, Object>> listByCompany(String company) {
		return sst.selectList("empLedgerns.listByCompany", company);
	}

	@Override
	public EmpLedger selectOne(long emp_id) {
		return sst.selectOne("empLedgerns.selectOne", emp_id);
	}

	@Override
	public void insert(EmpLedger empLedger) {
		sst.insert("empLedgerns.insert", empLedger);
	}

	@Override
	public void update(EmpLedger empLedger) {
		sst.update("empLedgerns.update", empLedger);
	}
	

}
