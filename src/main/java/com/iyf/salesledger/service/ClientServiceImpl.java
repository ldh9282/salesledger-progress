package com.iyf.salesledger.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyf.salesledger.dao.ClientDao;
import com.iyf.salesledger.model.Client;

@Service
public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientDao clientDao;

	@Override
	public Client selectOne(long client_id) {
		return clientDao.selectOne(client_id);
	}

	@Override
	public void insert(Client client) {
		clientDao.insert(client);
	}

	@Override
	public Client findByParams(Client client) {
		return clientDao.findByParams(client);
	}

	
	
}
