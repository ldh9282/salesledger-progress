package com.iyf.salesledger.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyf.salesledger.dao.SalesResultDao;

@Service
public class SalesResultServiceImpl implements SalesResultService {

	@Autowired
	private SalesResultDao salesResultDao; 
	
	@Override
	public List<Map<String, Object>> listByCompany(String company, String batch_month) {
		return salesResultDao.listByCompany(company, batch_month);
	}

}
