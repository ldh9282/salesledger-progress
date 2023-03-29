package com.iyf.salesledger.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyf.salesledger.dao.SalesLedgerDao;
import com.iyf.salesledger.model.SalesLedger;

@Service
public class SalesLedgerServiceImpl implements SalesLedgerService{

	@Autowired
	private SalesLedgerDao salesLedgerDao;
	
	@Override
	public List<SalesLedger> list() {
		return salesLedgerDao.list();
	}

	@Override
	public List<Map<String, Object>> listByCompany(String company) {
		return salesLedgerDao.listByCompany(company);
	}

	@Override
	public SalesLedger selectOne(long sales_id) {
		return salesLedgerDao.selectOne(sales_id);
	}

	@Override
	public void insert(SalesLedger salesLedger) {
		salesLedgerDao.insert(salesLedger);
	}

	@Override
	public void update(SalesLedger salesLedger) {
		salesLedgerDao.update(salesLedger);
	}

	@Override
	public void delete(long sales_id) {
		salesLedgerDao.delete(sales_id);
	}
}
