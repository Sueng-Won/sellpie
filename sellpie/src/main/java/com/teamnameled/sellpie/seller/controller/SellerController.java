package com.teamnameled.sellpie.seller.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
//		request.setAttribute("selTag", selTag);
		List<Member> sellerList = sellerService.selectSellerList(selTag);
		List<Seller> sellerInfo = sellerService.selectSellersInfo(sellerList);
		System.out.println(sellerInfo);
		request.setAttribute("sellerList", sellerList);
		request.setAttribute("sellerInfo", sellerInfo);
		return "seller/sellerList";
	}
}
