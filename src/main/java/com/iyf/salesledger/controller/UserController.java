package com.iyf.salesledger.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iyf.salesledger.model.User;
import com.iyf.salesledger.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService us;
	
	@RequestMapping("/loginForm.do")
	public String loginForm() {
		return "/user/loginForm";
	}
	
	@RequestMapping("/userRegisterForm.do")
	public String registerForm() {
		return "/user/userRegisterForm";
	}
	
	@RequestMapping("/userRegister.do")
	public String register(Model model, User user) {
		int result = 0;
		User user2 = us.select(user.getUsername());
		if (user2 == null) {
			result = us.insert(user);
		} else { 
			result = -1; // 아이디 중복
		}
		model.addAttribute("result", result);
		return "/user/userRegister";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "/user/logout";
	}
	
}
