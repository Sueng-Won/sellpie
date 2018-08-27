package com.teamnameled.sellpie.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.transform.stream.StreamResult;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.teamnameled.sellpie.admin.model.service.AdminService;
import com.teamnameled.sellpie.admin.model.vo.Admin;
import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.seller.model.vo.Seller;



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
	@RequestMapping(value="adminJoin.do", method=RequestMethod.POST)
	public ModelAndView adminJoin(Admin admin, ModelAndView mav, HttpSession session){
		
		try {
			int result = adminService.adminJoin(admin);
			if(0<result){
				session.setAttribute("admin", result);
				mav.setViewName("admin/adminIndex");
			}
		} catch (Exception e) {
			mav.addObject("msg", "관리자 가입중 에러");
			mav.setViewName("common/errorPage");
			e.printStackTrace();
		}
		
		return mav;
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
