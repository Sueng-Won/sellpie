package com.teamnameled.sellpie.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SellerController {
	
	@RequestMapping("sellerDetail.do")
	public String sellerDetail() {
		return "seller/sellerDetail";
	}
}
