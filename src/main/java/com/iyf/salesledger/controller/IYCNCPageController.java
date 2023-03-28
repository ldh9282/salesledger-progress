package com.iyf.salesledger.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IYCNCPageController {

	// 인력기초원장 목록페이지
//	@PreAuthorize("(isAuthenticated() && principal.username == #member.userId) or hasAuthority('ROLE_ADMIN')")
	@PreAuthorize("isAuthenticated() or hasAuthority('ROLE_ADMIN')")
	@GetMapping("/iycnc/empLedgerList")
	public String showEmpListPage() {
		return "iycnc/empLedgerList";
	}

	// 인력기초원장 목록페이지에서 인력투입예정페이지 버튼 클릭 시 팝업페이지
	@GetMapping("/iycnc/empLedgerRegister")
	public String showEmpLedgerRegisterPage() {
		return "iycnc/empLedgerRegister";
	}

	// 인력기초원장 목록페이지에서 row 더블 클릭 시 팝업페이지
	@GetMapping("/iycnc/empLedgerDetail")
	public String showEmpLedgerDetailPage() {
		return "iycnc/empLedgerDetail";
	}

	// iycnc salesLedgerList.jsp 페이지
	@GetMapping("/iycnc/salesLedgerList")
	public String showSalesledgerListPage() {
		return "iycnc/salesLedgerList";
	}

	@GetMapping("/iycnc/salesEstimationList")
	public String showSalesEstimationListPage() {
		return "iycnc/salesEstimationList";
	}

	@GetMapping("/iycnc/salesResultList")
	public String showSalesResultListPage() {
		return "iycnc/salesResultList";
	}
}
