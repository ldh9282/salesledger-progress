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
public class EmpLedgerServiceImpl implements EmpLedgerService {

	@Autowired
	private EmpLedgerDao empLedgerDao;
	
	@Autowired
	private ClientDao clientDao;
	
	@Autowired
	private EmpPoolDao empPoolDao;
	
	@Autowired
	private SalesLedgerDao salesLedgerDao;
	
	@Override
	public List<EmpLedger> list() {
		
		return empLedgerDao.list();
	}
	
	@Override
	public List<Map<String, Object>> listByCompany(String company) {
		return empLedgerDao.listByCompany(company);
	}

	@Override
	public EmpLedger selectOne(long emp_id) {
		return empLedgerDao.selectOne(emp_id);
	}

	@Override
	public void insert(EmpLedger empLedger) {
		empLedgerDao.insert(empLedger);
	}
	
	@Override @Transactional
	public void insert(EmpLedger empLedger, Client client) {
		EmpPool empPool = empPoolDao.selectOne(empLedger.getEmp_pool_id());
		empPool.setProject_assign(empPool.getProject_assign() + 1);
		empPoolDao.update(empPool);
		
		empLedger.setProgress("투입예정");
		
		clientDao.insert(client);
		empLedger.setClient_id(client.getClient_id());
		empLedgerDao.insert(empLedger);
		
		
	}

	@Override
	public void update(EmpLedger empLedger) {
		empLedgerDao.update(empLedger);
	}

	@Override @Transactional
	public void patchProgress(long emp_id, String progress) {
		EmpLedger empLedger = empLedgerDao.selectOne(emp_id);
		EmpPool empPool = empPoolDao.selectOne(empLedger.getEmp_pool_id());
		
		if (empLedger != null) {
			empLedger.setProgress(progress);
			empLedgerDao.update(empLedger);
		}
		
		if (progress.equals("투입")) {
			SalesLedger salesLedger = new SalesLedger();
			salesLedger.setEmp_id(empLedger.getEmp_id());
			salesLedgerDao.insert(salesLedger);
		}
		
		if (progress.equals("드랍")) {
			if (empPool != null) {
				empPool.setProject_assign(empPool.getProject_assign() - 1);
				empPoolDao.update(empPool);
			}
		}
	}

	@Override
	public void patchProgressReason(long emp_id, String progress_reason) {
		EmpLedger empLedger = empLedgerDao.selectOne(emp_id);
		
		if (empLedger != null) {
			empLedger.setProgress_reason(progress_reason);
			empLedgerDao.update(empLedger);
		}
	}

	@Override @Transactional
	public void update(EmpLedger empLedger, Client client, EmpPool empPool) {
		Client theClient = clientDao.selectOne(empLedger.getClient_id());
		if (theClient != null) {
			
			client.setClient_id(theClient.getClient_id());
			clientDao.update(client);
		}
		
		
		EmpPool theEmpPool = empPoolDao.selectOne(empLedger.getEmp_pool_id());
		
		if (theEmpPool != null) {
			
			empPool.setEmp_pool_id(theEmpPool.getEmp_pool_id());
			empPoolDao.update(theEmpPool);
		}
		
		empLedgerDao.update(empLedger);
		
		
	}

	@Override @Transactional
	public void patchDel(long emp_id, String del) {
		 EmpLedger empLedger = empLedgerDao.selectOne(emp_id);
		 if (empLedger != null) {
			empLedger.setDel(del);
			
			empLedgerDao.update(empLedger);
		}
	}
	
	@Override @Transactional
	public void patchForceDel(long emp_id, String del) {
		EmpLedger empLedger = empLedgerDao.selectOne(emp_id);
		SalesLedger salesLedger = salesLedgerDao.findByEmpId(emp_id);
		
		if (empLedger != null) {
			empLedger.setDel(del);
			empLedgerDao.update(empLedger);
		}
		if (salesLedger != null) {
			salesLedger.setDel(del);
			salesLedgerDao.update(salesLedger);
		}
		
		EmpPool empPool = empPoolDao.selectOne(empLedger.getEmp_pool_id());
		if (empPool != null) {
			empPool.setProject_assign(empPool.getProject_assign() - 1);
			empPoolDao.update(empPool);
		}
		
	}

}
