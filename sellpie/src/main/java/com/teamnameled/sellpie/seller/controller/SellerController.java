package com.teamnameled.sellpie.seller.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamnameled.sellpie.member.model.vo.Member;
import com.teamnameled.sellpie.seller.model.service.SellerService;
import com.teamnameled.sellpie.seller.model.vo.Seller;

@Controller
public class SellerController {
	@Autowired
	SellerService sellerService;
	
	@RequestMapping("tagSearch.do")
	public String tagSearch(String searchText,HttpServletRequest request) {
		String selTag = searchText;
		request.setAttribute("selTag", selTag);
		List<Member> sellerList = sellerService.selectSellerList(selTag);
		List<Seller> sellerInfo = sellerService.selectSellersInfo(sellerList);
		request.setAttribute("sellerList", sellerList);
		request.setAttribute("sellerInfo", sellerInfo);
		return "seller/sellerList";
	}
	
	@RequestMapping("applySeller.do")
	public String sellerDetail() {
		
		return "seller/sellerDetail";
	}
	@RequestMapping("sellerCheck.do")
	public @ResponseBody int sellerCheck(HttpServletRequest request) {
		int result = 0;
		HttpSession session = request.getSession();
		Member user = (Member)session.getAttribute("user");
		Seller seller = sellerService.selectSeller(user.getEmail());
		//seller등록했을 경우
		if(seller!=null){
			request.getSession().setAttribute("sNo", seller.getsNo());
			result = 2;
			//seller등록이 완료됐을경우
			if(seller.getConfirm()=='Y'){
				result = 1;
			}
		}
		return result;
	}
	
	@RequestMapping("sellerForm.do")
	public String sellerForm() {
		return "seller/sellerForm";
	}
	@RequestMapping("sellerApply.do")
	public String sellerApply(HttpServletRequest request, Seller seller) {
		Member user = (Member)request.getSession().getAttribute("user");
		seller.setEmail(user.getEmail());
		System.out.println(seller);
		int result = sellerService.insertSeller(seller);
		String returnUrl = (String) request.getSession().getAttribute("url");
	      if(null == returnUrl){
	    	  returnUrl = "main.do";
	      }
	      
	      return "redirect:"+returnUrl;
	}
	
}
