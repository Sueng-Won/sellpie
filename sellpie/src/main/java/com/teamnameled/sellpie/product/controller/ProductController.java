package com.teamnameled.sellpie.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamnameled.sellpie.product.model.service.ProductService;
import com.teamnameled.sellpie.product.model.vo.Product;
import com.teamnameled.sellpie.review.controller.ReviewController;
import com.teamnameled.sellpie.review.model.vo.Review;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	@Autowired
	ReviewController reviewController;
	
	@RequestMapping("productList.do")
	public String selectProductList(int sNo,HttpServletRequest request) {
		List<Product> productList = productService.selectProductList(sNo);
		List<Review> reviewList = reviewController.selectReviewList(productList);
		double starAvg = 0;
		int flooredStarAvg = 0;
		int reviewerCount = reviewList.size();
		for(int i = 0; i<reviewList.size(); i++) {
			starAvg += reviewList.get(i).getReviewStar();
		}
		starAvg /= reviewList.size();
		flooredStarAvg = (int)Math.round(starAvg);
		request.setAttribute("productList", productList);
		request.setAttribute("star", flooredStarAvg);
		request.setAttribute("count", reviewerCount);
		return "product/productList";
	}
}
