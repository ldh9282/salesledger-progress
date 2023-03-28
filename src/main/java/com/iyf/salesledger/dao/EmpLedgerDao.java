package com.iyf.salesledger.dao;

import java.util.List;
import java.util.Map;

import com.iyf.salesledger.model.EmpLedger;

public interface EmpLedgerDao {

	List<EmpLedger> list();
	
	List<Map<String, Object>> listByCompany(String company);
	
	EmpLedger selectOne(long emp_id);
	
	void insert(EmpLedger empLedger);

	void update(EmpLedger empLedger);

	
}
