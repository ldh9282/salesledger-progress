package com.iyf.salesledger.common.security;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	
	@GetMapping("/login")
	public String showLoginPage(HttpServletRequest request, String error, String logout, Model model) {
	
		if (error != null) { 
			model.addAttribute("error", "로그인 오류. 계정이나 암호를 확인하세요");
		}
		
		if (logout != null) {
			model.addAttribute("logout", "로그아웃 후에 호출된 로그인 페이지 입니다");
		}
		
		
		return "login";
		
	}
	
	
	

}
