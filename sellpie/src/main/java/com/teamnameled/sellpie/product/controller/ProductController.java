package com.teamnameled.sellpie.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamnameled.sellpie.product.model.service.ProductService;
import com.teamnameled.sellpie.product.model.vo.Product;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping("productList.do")
	public String selectProductList(int sNo,HttpServletRequest request) {
		List<Product> productList = productService.selectProductList(sNo);
		request.setAttribute("productList", productList);
		return "product/productList";
	}
}
