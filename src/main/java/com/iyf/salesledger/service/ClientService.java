package com.iyf.salesledger.service;

import com.iyf.salesledger.model.Client;

public interface ClientService {

	Client selectOne(long client_id);
	
	void insert(Client client);

	Client findByParams(Client client);
	
}
