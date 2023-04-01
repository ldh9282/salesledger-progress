package com.iyf.salesledger.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.iyf.salesledger.model.EmpPool;
import com.iyf.salesledger.service.EmpPoolService;

@RestController
public class EmpPoolAjaxController {

	@Autowired
	private EmpPoolService empPoolService;
	
	// empPoolList.jsp 페에지에서 리스트 조회
	@GetMapping("/empPool.ajax")
	public List<EmpPool> retrieveEmpPoolList() {
		List<EmpPool> empPools = empPoolService.list();
		return empPools;
	}
	
	// empPoolRegister.jsp 페이지에서 등록
	@PostMapping("/empPool.ajax")
	public void insertEmpPool(@RequestBody EmpPool empPool) {
		empPoolService.insert(empPool);
	}
	
	@GetMapping("/empPool.ajax/{emp_pool_id}")
	public EmpPool retrieveEmpPool(@PathVariable long emp_pool_id) {
		EmpPool empPool = empPoolService.selectOne(emp_pool_id);
		return empPool;
	}
	
	@PutMapping("/empPool.ajax")
	public void updateEmpPool(@RequestBody EmpPool empPool) {
		empPoolService.update(empPool);
	}
	
	@DeleteMapping("/empPool.ajax/{emp_pool_id}")
	public void deleteEmpPool(@PathVariable long emp_pool_id) {
		empPoolService.delete(emp_pool_id);
	}
	
	// empPoolDetail.jsp 페이지에서 삭제시 del 컬럼 Y로 patch
	@PatchMapping("/empPool.ajax/{emp_pool_id}/project_assign/{project_assign}")
	public void patchProjectAssign(@PathVariable long emp_pool_id, @PathVariable int project_assign) {
		empPoolService.patchProjectAssign(emp_pool_id, project_assign);
	}
	
	// empPoolDetail.jsp 페이지에서 삭제시 del 컬럼 Y로 patch
	@PatchMapping("/empPool.ajax/{emp_pool_id}/del/{del}")
	public void patchDel(@PathVariable long emp_pool_id, @PathVariable String del) {
		empPoolService.patchDel(emp_pool_id, del);
	}
	
	
	// empLedgerRegister.jsp 페이지에서 이름과 전화번호로 empPool 조회
	@GetMapping("/empPool.ajax/name/{name}/phonenumber/{phonenumber}")
	public EmpPool retrieveEmpPoolByNameAndPhoneNumber(@PathVariable String name, @PathVariable String phonenumber) {
		return empPoolService.findByNameAndPhoneNumber(name, phonenumber);
	}
	
}
