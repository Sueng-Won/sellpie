package com.teamnameled.sellpie.seller.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamnameled.sellpie.seller.model.service.SellerService;
import com.teamnameled.sellpie.seller.model.vo.Seller;

@Controller
public class SellerController {
	@Autowired
	SellerService sellerService;
	@RequestMapping("seller.do")
	public String sellerDetail() {
		Seller seller = sellerService.selectSeller();
		
		return "seller/sellerDetail";
	}
}
