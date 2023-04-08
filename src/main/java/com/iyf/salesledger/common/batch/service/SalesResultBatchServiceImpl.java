package com.iyf.salesledger.common.batch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iyf.salesledger.common.batch.dao.SalesResultBatchDao;

@Service
public class SalesResultBatchServiceImpl implements SalesResultBatchService {

	@Autowired
	private SalesResultBatchDao salesResultBatchDao; 
	
	@Override @Transactional
	public void monthlySalesBatch(String company) {
		salesResultBatchDao.delete(company);
		salesResultBatchDao.insert(company);
	}
}
