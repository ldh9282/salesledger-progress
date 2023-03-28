package com.iyf.salesledger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IYSPageController {

	// 인력기초원장 목록페이지
	@GetMapping("/iys/empLedgerList")
	public String showEmpListPage() {
		return "iys/empLedgerList";
	}

	// 인력기초원장 목록페이지에서 인력투입예정페이지 버튼 클릭 시 팝업페이지
	@GetMapping("/iys/empLedgerRegister")
	public String showEmpLedgerRegisterPage() {
		return "iys/empLedgerRegister";
	}

	// 인력기초원장 목록페이지에서 row 더블 클릭 시 팝업페이지
	@GetMapping("/iys/empLedgerDetail")
	public String showEmpLedgerDetailPage() {
		return "iys/empLedgerDetail";
	}

	// iys salesLedgerList.jsp 페이지
	@GetMapping("/iys/salesLedgerList")
	public String showSalesledgerListPage() {
		return "iys/salesLedgerList";
	}

	@GetMapping("/iys/salesEstimationList")
	public String showSalesEstimationListPage() {
		return "iys/salesEstimationList";
	}

	@GetMapping("/iys/salesResultList")
	public String showSalesResultListPage() {
		return "iys/salesResultList";
	}
}
