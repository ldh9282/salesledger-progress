package com.iyf.salesledger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmpPoolPageController {

	// empPoolList.jsp 페이지
	@GetMapping("/empPoolList.do")
	public String showEmpPoolListPage() {
		return "empPool/empPoolList";
	}
	
	// empPoolRegister.jsp 페이지
	@GetMapping("/empPoolRegister.do")
	public String showEmpPoolRegisterPage() {
		return "empPool/empPoolRegister";
	}
	
	// empPoolRegister.jsp 페이지
	@GetMapping("/empPoolDetail.do")
	public String showEmpPoolDetailPage() {
		return "empPool/empPoolDetail";
	}
	
}
