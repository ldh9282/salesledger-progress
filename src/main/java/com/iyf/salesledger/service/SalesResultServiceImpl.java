package com.iyf.salesledger.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyf.salesledger.common.batch.model.SalesResult;
import com.iyf.salesledger.dao.SalesResultDao;

@Service
public class SalesResultServiceImpl implements SalesResultService {

	@Autowired
	private SalesResultDao salesResultDao; 
	
	@Override
	public List<Map<String, Object>> listByCompanyAndDepartmentAndBatchMonth(String company, String department, String batch_month) {
		return salesResultDao.listByCompanyAndDepartmentAndBatchMonth(company, department, batch_month);
	}

	@Override
	public void insertByHandwrite(SalesResult salesResult) {
		salesResult.setHandwrite("Y");
		salesResultDao.insert(salesResult);
	}

}
