package com.iyf.salesledger.controller.iycnc;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ITOPageController {

	// iycnc empLedgerList.jsp 인력기초원장 목록페이지(메인페이지)
	@PreAuthorize("hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')")
	@GetMapping("/iycnc/ito/empLedgerList")
	public String showEmpListPage() {
		return "iycnc/ito/empLedgerList";
	}

	// iycnc empLedgerRegister.jsp 인력기초원장 등록페이지(팝업페이지; 이름과 전화번호로로 인력풀에서 인력조회, 등록이 곧 투입예정)
	@PreAuthorize("hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')")
	@GetMapping("/iycnc/ito/empLedgerRegister")
	public String showEmpLedgerRegisterPage() {
		return "iycnc/ito/empLedgerRegister";
	}

	// iycnc empLedgerDetail.jsp 인력기초원장 상세페이지(팝업페이지; 수정, 투입확정, 드랍, 삭제, 강제삭제)
	@PreAuthorize("hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')")
	@GetMapping("/iycnc/ito/empLedgerDetail")
	public String showEmpLedgerDetailPage() {
		return "iycnc/ito/empLedgerDetail";
	}

	// iycnc salesLedgerList.jsp 매출원장 목록페이지(메인페이지; 투입확정시 데이터 자동추가; 해당월 반영여부)
	@PreAuthorize("hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')")
	@GetMapping("/iycnc/ito/salesLedgerList")
	public String showSalesledgerListPage() {
		return "iycnc/ito/salesLedgerList";
	}
	
	// iycnc salesLedgerDetail.jsp 매출원장 상세페이지(팝업페이지; 수정만 가능)
	@PreAuthorize("hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')")
	@GetMapping("/iycnc/ito/salesLedgerDetail")
	public String showSalesledgerDetailPage() {
		return "iycnc/ito/salesLedgerDetail";
	}
	
	// iycnc salesResultList.jsp 매출실적 목록페이지
	@PreAuthorize("hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')")
	@GetMapping("/iycnc/ito/salesResultList")
	public String showSalesResultPage() {
		return "iycnc/ito/salesResultList";
	}

}
