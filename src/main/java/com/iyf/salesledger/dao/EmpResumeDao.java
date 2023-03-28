package com.iyf.salesledger.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.iyf.salesledger.model.EmpResume;

public interface EmpResumeDao {

	void insert(EmpResume empResume);

	Long maxKeySelect();

	List<EmpResume> selectList(long empPoolId);

	EmpResume select(long maxResumeno);
}
