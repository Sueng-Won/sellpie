package com.teamnameled.sellpie.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Member {

	@RequestMapping("login.do")
	public String loginPage(){
		return "member/login";
	}
	@RequestMapping("memberJoin.do")
	public String memberJoin(){
		return "member/join/email";
	}
	
}
