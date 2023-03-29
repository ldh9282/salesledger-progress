package com.iyf.salesledger.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.iyf.salesledger.service.SalesLedgerService;

@RestController
public class SalesLedgerAjaxController {


	@Autowired
	private SalesLedgerService salesLedgerService;
	
	
	@GetMapping("/salesLedger.ajax/company/{company}")
	public List<Map<String, Object>> retrieveSalesLedgerListByCompany(@PathVariable String company) {
		return salesLedgerService.listByCompany(company);
	}
}
