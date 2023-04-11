package com.iyf.salesledger.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminPageController {

	@GetMapping("/admin/memberList")
	public String showMemberListPage() {
		return "admin/memberList";
	}
}
