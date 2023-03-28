package com.iyf.salesledger.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyf.salesledger.model.Client;

@Repository
public class ClientDaoImpl implements ClientDao {

	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public Client selectOne(long client_id) {
		return sst.selectOne("clientns.selectOne", client_id);
	}

	@Override
	public Client findByParams(Client client) {
		return sst.selectOne("clientns.findByParams", client);
	}

	@Override
	public void insert(Client client) {
		sst.insert("clientns.insert", client);
	}

	@Override
	public void update(Client client) {
		sst.update("clientns.update", client);
	}

	
}
