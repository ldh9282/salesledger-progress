package com.iyf.salesledger.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iyf.salesledger.model.User;
import com.iyf.salesledger.service.UserService;

@Controller
public class AdminController {
	@Autowired
	private UserService us;
	
	@RequestMapping("/adminPage.do")
	public String adminPage(Model model) {
		
		List<User> userList = us.list();
		
		model.addAttribute("userList", userList);
		return "/admin/adminPage";
	}
	
	@RequestMapping("/userPermit.do")
	public String userPermit(Model model, String username) {
		int result = 0;
		result = us.userPermit(username);
		return "redirect:/adminPage.do";
	}
	
	@RequestMapping("/authoritySetting.do")
	public String authoritySetting(Model model, User user) {
		if(user.getAuthority().equals("none")) {
			return "redirect:/adminPage.do";
		}else {
		int result = 0;
		result = us.authoritySetting(user);
		System.out.println("user");
		}
		return "redirect:/adminPage.do";
	}
}
