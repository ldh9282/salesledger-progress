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
	
	@GetMapping("/salesResult.ajax/company/{company}/department/{department}/batch_month/{batch_month}")
	public List<Map<String, Object>> retrieveSalesResultListByCompanyAndDepartmentAndBatchMonth(@PathVariable String company, @PathVariable String department, @PathVariable String batch_month) {
		return salesResultService.listByCompanyAndDepartmentAndBatchMonth(company, department, batch_month);
	}
}
