package com.iyf.salesledger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IBTSPageController {

	// 인력기초원장 목록페이지
	@GetMapping("/ibts/empLedgerList")
	public String showEmpListPage() {
		return "ibts/empLedgerList";
	}

	// 인력기초원장 목록페이지에서 인력투입예정페이지 버튼 클릭 시 팝업페이지
	@GetMapping("/ibts/empLedgerRegister")
	public String showEmpLedgerRegisterPage() {
		return "ibts/empLedgerRegister";
	}

	// 인력기초원장 목록페이지에서 row 더블 클릭 시 팝업페이지
	@GetMapping("/ibts/empLedgerDetail")
	public String showEmpLedgerDetailPage() {
		return "ibts/empLedgerDetail";
	}

	// ibts salesLedgerList.jsp 페이지
	@GetMapping("/ibts/salesLedgerList")
	public String showSalesledgerListPage() {
		return "ibts/salesLedgerList";
	}

	@GetMapping("/ibts/salesEstimationList")
	public String showSalesEstimationListPage() {
		return "ibts/salesEstimationList";
	}

	@GetMapping("/ibts/salesResultList")
	public String showSalesResultListPage() {
		return "ibts/salesResultList";
	}

}
