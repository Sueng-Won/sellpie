package com.teamnameled.sellpie.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teamnameled.sellpie.admin.model.service.AdminService;
import com.teamnameled.sellpie.admin.model.vo.Admin;



@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	AdminService adminService;
	
	
	/*
	@RequestMapping("adminMain.do")
	public String adminMain() {
		return "admin/adminMain";
	}
	@RequestMapping("template.do")
	public String template() {
		return "template/template";
	}
	@RequestMapping("templateAdvance.do")
	public String templateAdvance() {
		return "template/templateAdvance";
	}*/
	@RequestMapping("inspectAu.do")
	public String inspectAu(){
		return "admin/adminLogin";
	}
	@RequestMapping(value="adminLogin.do", method=RequestMethod.POST)
	public String adminIndex(Admin admin){
		System.out.println(admin);
		Admin  result = adminService.adminLogin(admin);
		
		
		return "admin/adminIndex";
	}
}
