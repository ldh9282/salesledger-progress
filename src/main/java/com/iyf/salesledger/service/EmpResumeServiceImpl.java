package com.iyf.salesledger.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyf.salesledger.dao.EmpResumeDao;
import com.iyf.salesledger.model.EmpResume;

@Service
public class EmpResumeServiceImpl implements EmpResumeService {
	@Autowired 
	EmpResumeDao erd;

	@Override
	public void insert(EmpResume empResume) {
		erd.insert(empResume);
		
	}
	
	@Override
	public Long maxKeySelect() {
		// TODO Auto-generated method stub
		return erd.maxKeySelect();
	}

	@Override
	public List<EmpResume> selectList(long empPoolId) {
		// TODO Auto-generated method stub
		return erd.selectList(empPoolId);
	}

	@Override
	public EmpResume select(long maxResumeno) {
		// TODO Auto-generated method stub
		return erd.select(maxResumeno);
	}
}
