package com.teamnameled.sellpie.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.teamnameled.sellpie.admin.model.service.AdminService;
import com.teamnameled.sellpie.admin.model.vo.Admin;
import com.teamnameled.sellpie.board.model.service.BoardService;
import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.member.model.service.MemberService;
import com.teamnameled.sellpie.seller.model.vo.Seller;



@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	MemberService memberSerivce;
	
	
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
	public ModelAndView adminAdPage(ModelAndView mav){
		//광고 페이지로 이동
		List<BoardVo> sellerApprovalList = boardService.selectADList2();
		mav.addObject("sellerList", sellerApprovalList);
		mav.setViewName("admin/adminAd");
		
		return mav;
	}
	/*@RequestMapping(value="approveAdmin.do", method=RequestMethod.POST)
	public @ResponseBody String approveAdmin(BoardVo seller){
		System.out.println(seller);
		String msg = "";
		int result = boardService.updateSellerAu(seller);
		if(0<result){
			msg="처리 완료!";
		}else{
			msg = "처리 중 에러 발생!";
		}
		
		return msg;
	}*/
	@RequestMapping("adminSell.do")
	public ModelAndView adminSellPage(HttpServletRequest request, ModelAndView mv){
		ArrayList<Seller> list = (ArrayList<Seller>) adminService.selectSellerList();
		mv.addObject("list", list);
		mv.setViewName("admin/adminSell");
		return mv;
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
	//db 데이터 조회
	@RequestMapping("getStatsInfo.do")
	public ModelAndView getStatsInfo(ModelAndView mav){
		HashMap<String, Object> statsInfo = new HashMap<String, Object>();
		
		List<Admin> weeklyDate = adminService.selectWeeklyDate();
		int todayUser = memberSerivce.selectMemberCount();
		
		
		System.out.println(weeklyDate);
		statsInfo.put("todayUser", todayUser);
		statsInfo.put("weeklyDate", weeklyDate);
		
		mav.addObject("adminData", statsInfo);
		
		mav.setViewName("admin/adminIndex");
		
		return mav;
	}
	
	@RequestMapping("confirmSeller.do")
	public @ResponseBody int confirmSeller(int sNo) {
		int result = 0;
		result = adminService.confirmSeller(sNo);
		return result;
	}
}
