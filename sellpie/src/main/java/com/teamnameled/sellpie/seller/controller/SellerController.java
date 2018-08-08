package com.teamnameled.sellpie.seller.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamnameled.sellpie.seller.model.service.SellerService;
import com.teamnameled.sellpie.seller.model.vo.Seller;

@Controller
public class SellerController {
	@Autowired
	SellerService sellerService;
	@RequestMapping("tagSearch")
	public String tagSearch(String searchContentStr,HttpServletRequest request) {
		String selTag = searchContentStr;
		List<Seller> sellerList = sellerService.selectSellerList(selTag);
		request.setAttribute("sellerList", sellerList);
		return "seller/sellerList";
	}
}
