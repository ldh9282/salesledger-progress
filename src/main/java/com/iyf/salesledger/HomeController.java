package com.iyf.salesledger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.iyf.salesledger.common.security.Member;
import com.iyf.salesledger.service.MemberService;

@Controller
@RequestMapping("/*" )
@EnableWebMvc
public class HomeController {

	@Autowired
	private MemberService memberService;
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/")	
	public String showHomePage() {
		return "home";
	}
	
	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}
	
	@GetMapping("/register")
	public String showRegisterPage() {
		return "register";
	}
	
	@PostMapping("/register")
	public String register(Member member) {
		memberService.insert(member);
		return "redirect:/login";
	}
}
