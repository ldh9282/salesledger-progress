package com.iyf.salesledger.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyf.salesledger.model.EmpLedger;
import com.iyf.salesledger.model.SalesLedger;

@Repository
public class SalesLedgerDaoImpl implements SalesLedgerDao{
	@Autowired
	private SqlSessionTemplate sst;

}
