package com.teamnameled.sellpie.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginServlet {

	@RequestMapping("login.do")
	public String loginPage(){
		return "login/login";
	}
}
