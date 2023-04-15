package com.iyf.salesledger.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.iyf.salesledger.model.Client;
import com.iyf.salesledger.model.EmpLedger;
import com.iyf.salesledger.model.EmpPool;
import com.iyf.salesledger.service.EmpLedgerService;

@RestController
public class EmpLedgerAjaxController {

	@Autowired
	private EmpLedgerService empLedgerService;
	
	@GetMapping("/empLedger.ajax")
	public List<EmpLedger> retrieveEmpLedgerList() {
		return empLedgerService.list();
	}
	
	@GetMapping("/empLedger.ajax/{emp_id}")
	public EmpLedger retrieveEmpLedger(@PathVariable long emp_id) {
		return empLedgerService.selectOne(emp_id);
	}
	
	//회사에 맞는 인력원장 출력
	@GetMapping("/empLedger.ajax/company/{company}/department/{department}")
	public List<Map<String, Object>> retrieveEmpLedgerListByCompanyAndDepartment(@PathVariable String company, @PathVariable String department) {
		return empLedgerService.listByCompanyAndDepartment(company, department);
	}
	
	// 투입예상버튼, 투입확정버튼 클릭 시 ajax
	@PostMapping("/empLedger.ajax")
	public void expectedInsert(@RequestBody Map<String, Object> requestBodyMap) {
		Gson gson = new Gson();
		EmpLedger empLedger = gson.fromJson(gson.toJson(requestBodyMap.get("empLedger")), EmpLedger.class);
		Client client = gson.fromJson(gson.toJson(requestBodyMap.get("client")), Client.class);
		
		empLedgerService.insert(empLedger, client);
	}
	
	@PatchMapping("/empLedger.ajax/{emp_id}/progress/{progress}")
	public void patchProgress(@PathVariable long emp_id, @PathVariable String progress) {
		empLedgerService.patchProgress(emp_id, progress);
	}
	
	@PatchMapping("/empLedger.ajax/{emp_id}/progress_reason/{progress_reason}")
	public void patchProgressReason(@PathVariable long emp_id, @PathVariable(required = false) String progress_reason) {
		empLedgerService.patchProgress(emp_id, progress_reason);
	}
	
	// 상세페이지에서 수정버튼 클릭시
	@PutMapping("/empLedger.ajax")
	public void update(@RequestBody Map<String, Object> requestBodyMap) {
		Gson gson = new Gson();
		EmpLedger empLedger = gson.fromJson(gson.toJson(requestBodyMap.get("empLedger")), EmpLedger.class);
		Client client = gson.fromJson(gson.toJson(requestBodyMap.get("client")), Client.class);
		EmpPool empPool= gson.fromJson(gson.toJson(requestBodyMap.get("empPool")), EmpPool.class);
		
		empLedgerService.update(empLedger, client, empPool);
	}
	
	@PatchMapping("/empLedger.ajax/{emp_id}/del/{del}")
	public void patchDel(@PathVariable long emp_id, @PathVariable String del) {
		empLedgerService.patchDel(emp_id, del);
	}
	
	@PatchMapping("/empLedger.ajax/{emp_id}/ForceDel/{del}")
	public void patchForceDel(@PathVariable long emp_id, @PathVariable String del) {
		empLedgerService.patchForceDel(emp_id, del);
	}
}
