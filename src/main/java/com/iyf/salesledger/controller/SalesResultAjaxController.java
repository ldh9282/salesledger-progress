package com.iyf.salesledger.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.iyf.salesledger.service.SalesResultService;

@RestController
public class SalesResultAjaxController {

	@Autowired
	private SalesResultService salesResultService;
	
	@GetMapping("/salesLedger.ajax/company/{company}/batch_month/{batch_month}")
	public List<Map<String, Object>> retrieveSalesResultListByCompany(@PathVariable String company, @PathVariable String batch_month) {
		return salesResultService.listByCompany(company, batch_month);
	}
}
