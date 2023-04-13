package com.iyf.salesledger.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.iyf.salesledger.common.paging.PagingCreatorDTO;
import com.iyf.salesledger.common.paging.PagingDTO;
import com.iyf.salesledger.common.security.Member;
import com.iyf.salesledger.service.MemberService;

@Controller
public class AdminPageController {
	
	@Autowired
	private MemberService memberService;
	
	@PreAuthorize("hasAuthority('통합 관리자')")
	@GetMapping("/admin/memberList")
	public String showMemberListPage(PagingDTO pagingDTO, Model model) {
		model.addAttribute("memberList",
				memberService.selectMemberListPagingByKeyword(pagingDTO) );
		
		long count = memberService.selectTotalCount(pagingDTO);
		PagingCreatorDTO pagingCreatorDTO = new PagingCreatorDTO(count, pagingDTO);
		
		model.addAttribute("pagingCreator", pagingCreatorDTO);
		return "admin/memberList";
	}
	
	@PreAuthorize("hasAuthority('통합 관리자')")
	@GetMapping("/admin/memberDetail")
	public String showMemberDetailPate(String username, Model model) {
		Member member = memberService.selectOne(username);
		model.addAttribute("member", member);
		return "admin/memberDetail";
	}
}
