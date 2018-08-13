package com.teamnameled.sellpie.review.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.teamnameled.sellpie.product.model.vo.Product;
import com.teamnameled.sellpie.review.model.service.ReviewService;
import com.teamnameled.sellpie.review.model.vo.Review;

@Controller
public class ReviewController {
	@Autowired
	ReviewService reviewService;

	public List<Review> selectReviewList(List<Product> productList) {
		/*List<Integer> pNoList = null;
		for(int i = 0; i<productList.size();i++) {
			//productList 각 객체의 pNo 값을 list에 저장
			pNoList.add(productList.get(i).getpNo());
			System.out.println(pNoList.get(i));
		}*/
		List<Review> reviewList = reviewService.selectReviewList(productList);
		return reviewList;
	}
}
