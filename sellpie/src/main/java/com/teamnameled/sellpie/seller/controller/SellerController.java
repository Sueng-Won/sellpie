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
		if(seller!=null){
			request.getSession().setAttribute("sNo", seller.getsNo());
			result = 1;
		}
		return result;
	}
	
}
