package com.iyf.salesledger.controller.iycnc;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class IYCNCINFRAPageController {

	// IYCNC INFRA CATEGORY salesResultList.jsp 매출실적 목록페이지 (메인페이지)
	// CATEGORY : maintenance, merchandise, support
	@PreAuthorize("hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')")
	@GetMapping("/iycnc/infra/{category}/salesResultList")
	public String showSalesResultListPage(@PathVariable String category) {
		return "iycnc/infra/" + category + "/salesResultList";
	}
	
	// IYCNC INFRA CATEGORY salesResultList.jsp 매출실적 수기데이터 등록페이지 (수기 데이터는 매출원장에도 없으며 배치에 의해 추가/삭제 반영되지 않고 실적과 차트에만 반영되기 위한 데이터)
	// CATEGORY : maintenance, merchandise, support
	@PreAuthorize("hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')")
	@GetMapping("/iycnc/infra/{category}/salesResultRegister")
	public String showSalesResultRegisterPage(@PathVariable String category) {
		return "iycnc/infra/" + category + "/salesResultRegister";
	}
	
	// IYCNC INFRA CATEGORY salesResultDetail.jsp 매출실적 수기데이터 상세페이지 (팝업페이지; 수기 데이터만 상세페이지에서 수정 및 삭제할 수 있음)
	// CATEGORY : maintenance, merchandise, support
	@PreAuthorize("hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')")
	@GetMapping("/iycnc/infra/{category}/salesResultDetail")
	public String showSalesResultDetailPage(@PathVariable String category) {
		return "iycnc/infra/" + category + "/salesResultDetail";
	}
	

}
