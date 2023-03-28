package com.iyf.salesledger;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@RequestMapping("/*" )
@EnableWebMvc
public class HomeController {

	@GetMapping("/")
	public String showHomePage() {
		return "home";
	}
}
