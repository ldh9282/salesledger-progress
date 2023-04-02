package com.iyf.salesledger.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iyf.salesledger.dao.ClientDao;
import com.iyf.salesledger.dao.EmpLedgerDao;
import com.iyf.salesledger.dao.EmpPoolDao;
import com.iyf.salesledger.dao.SalesLedgerDao;
import com.iyf.salesledger.model.Client;
import com.iyf.salesledger.model.EmpLedger;
import com.iyf.salesledger.model.EmpPool;
import com.iyf.salesledger.model.SalesLedger;

@Service
public class SalesLedgerServiceImpl implements SalesLedgerService{

	@Autowired
	private SalesLedgerDao salesLedgerDao;
	
	@Autowired
	private EmpLedgerDao empLedgerDao;
	
	@Autowired
	private EmpPoolDao empPoolDao;
	
	@Autowired
	private ClientDao clientDao;
	
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

	@Override
	public void patchDel(long sales_id, String del) {
		SalesLedger salesLedger = salesLedgerDao.selectOne(sales_id);
		
		if (salesLedger != null) {
			salesLedger.setDel(del);
			
			salesLedgerDao.update(salesLedger);
		}
	}
	
	@Override @Transactional
	public void update(SalesLedger salesLedger, EmpLedger empLedger, Client client, EmpPool empPool) {
		EmpLedger theEmpLedger = empLedgerDao.selectOne(salesLedger.getEmp_id());
		if (theEmpLedger != null) {
			empLedger.setEmp_id(theEmpLedger.getEmp_id());
			empLedgerDao.update(empLedger);
		}
		
		Client theClient = clientDao.selectOne(empLedger.getClient_id());
		if (theClient != null) {
			
			client.setClient_id(theClient.getClient_id());
			clientDao.update(client);
		}
		
		
		EmpPool theEmpPool = empPoolDao.selectOne(empLedger.getEmp_pool_id());
		
		if (theEmpPool != null) {
			
			empPool.setEmp_pool_id(theEmpPool.getEmp_pool_id());
			empPoolDao.update(empPool);
		}
		
		salesLedgerDao.update(salesLedger);
		
		
	}
}
