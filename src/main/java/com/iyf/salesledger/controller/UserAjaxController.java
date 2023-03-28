package com.iyf.salesledger.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iyf.salesledger.model.User;
import com.iyf.salesledger.service.UserService;

@Controller
public class UserAjaxController {
	@Autowired
	private UserService us;
	
	@RequestMapping(value = "/confirmId.ajax", produces = "text/html;charset=utf-8") 
	@ResponseBody
	public String confirmId(String id) {
		String msg = "";
		User user = us.select(id); 
		if (user == null) msg = "1";
		else msg = "0";
		return msg;
	}
	
	@RequestMapping(value = "/login.ajax", method=RequestMethod.POST) 	
	public @ResponseBody int login(
		@RequestBody User user, HttpSession session, HttpServletRequest request) {
		if(session.getAttribute("userSession") != null) {
			session.removeAttribute("userSession");
		}
		User user2 = us.select(user.getUsername());
		
		int result = 0; // 암호가 일치하지 않는 경우
		if (user2 == null) {
			result = -1; // 아이디가 없는 경우 
		}else if (user2.getPermit().equals("N")) {
			result = -2; // 관리자가 승인 안한 아이디
		}else if (user2.getPassword().equals(user.getPassword())) {
			result = 1; //승인된 아이디 비밀번호까지 맞을때
			session.setAttribute("userSession", user2);// 세션저장
		}
		
		
		return result;
	}
}
