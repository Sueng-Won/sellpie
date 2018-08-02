package com.teamnameled.sellpie.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SellerServlet {
	
	@RequestMapping("sellerForm.do")
	public String sellerForm() {
		return "seller/sellerForm";
	}
}
