package com.iyf.salesledger.service;

import java.util.List;
import java.util.Map;

import com.iyf.salesledger.model.Client;
import com.iyf.salesledger.model.EmpLedger;
import com.iyf.salesledger.model.EmpPool;

public interface EmpLedgerService {

	List<EmpLedger> list();
	
	List<Map<String, Object>> listByCompany(String company);
	
	EmpLedger selectOne(long emp_id);
	
	void insert(EmpLedger empLedger);

	void update(EmpLedger empLedger);
	
	void patchProgress(long emp_id, String progress);
	
	void patchProgressReason(long emp_id, String progress_reason);

	void update(EmpLedger empLedger, Client client, EmpPool empPool);

	void insert(EmpLedger empLedger, Client client);

	void patchDel(long emp_id, String del);
	
}
