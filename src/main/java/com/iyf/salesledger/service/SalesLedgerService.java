package com.iyf.salesledger.service;

import java.util.List;
import java.util.Map;

import com.iyf.salesledger.model.SalesLedger;

public interface SalesLedgerService {

	List<SalesLedger> list();
	
	List<Map<String, Object>> listByCompany(String company);
	
	SalesLedger selectOne(long sales_id);

	void insert(SalesLedger salesLedger);
	
	void update(SalesLedger salesLedger);
	
	void delete(long sales_id);
	
	void patchDel(long sales_id, String del);
}
