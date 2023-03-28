package com.iyf.salesledger.service;

import java.util.List;

import com.iyf.salesledger.model.EmpResume;

public interface EmpResumeService {

	void insert(EmpResume empResume);
	
	Long maxKeySelect();

	List<EmpResume> selectList(long empPoolId);

	EmpResume select(long maxResumeno);

}
