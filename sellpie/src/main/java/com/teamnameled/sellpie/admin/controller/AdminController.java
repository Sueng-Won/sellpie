package com.teamnameled.sellpie.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping("adminAd.do")
	public String adminAdPage(){
		return "admin/adminAd";
	}
	@RequestMapping("adminSell.do")
	public String adminSellPage(){
		return "admin/adminSell";
	}
	@RequestMapping(value="adminLogin.do", method=RequestMethod.POST)
	public ModelAndView adminIndex(Admin admin, HttpSession session, ModelAndView mav ){
		System.out.println(admin);
		Admin  result = adminService.adminLogin(admin);
		
		if(null!=result){
			session.setAttribute("admin", result);
			mav.setViewName("admin/adminIndex");
		}else{
			mav.addObject("msg", "관리자가 아니구나?");
			mav.setViewName("common/errorPage");
		}
		
		
		return mav;
	}
}
