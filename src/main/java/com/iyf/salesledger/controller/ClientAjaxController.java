package com.iyf.salesledger.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.iyf.salesledger.model.Client;
import com.iyf.salesledger.service.ClientService;

@RestController
public class ClientAjaxController {

	@Autowired
	private ClientService clientService;
	

	@GetMapping("/client.ajax/{client_id}")
	public Client retrieveClient(@PathVariable long client_id) {
		return clientService.selectOne(client_id);
	}

}