package com.iyf.salesledger.dao;

import com.iyf.salesledger.model.Client;

public interface ClientDao {

	Client selectOne(long client_id);
	
	void insert(Client client);

	Client findByParams(Client client);

	void update(Client client);
}
