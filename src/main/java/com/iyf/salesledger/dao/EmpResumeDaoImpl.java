package com.iyf.salesledger.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyf.salesledger.model.EmpResume;

@Repository
public class EmpResumeDaoImpl implements EmpResumeDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public void insert(EmpResume empResume) {
		sst.insert("empResumens.insert", empResume);
	}
	
	@Override
	public Long maxKeySelect() {
		return sst.selectOne("empResumens.maxKeySelect");
	}

	@Override
	public List<EmpResume> selectList(long emp_pool_id) {
		// TODO Auto-generated method stub
		return sst.selectList("empResumens.selectList",emp_pool_id);
	}

	@Override
	public EmpResume select(long resume_id) {
		// TODO Auto-generated method stub
		return sst.selectOne("empResumens.select",resume_id);
	}
}
