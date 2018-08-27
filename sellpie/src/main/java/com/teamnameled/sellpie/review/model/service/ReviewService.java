package com.teamnameled.sellpie.review.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.product.model.vo.Product;
import com.teamnameled.sellpie.review.model.dao.ReviewDao;
import com.teamnameled.sellpie.review.model.vo.Review;

@Service
public class ReviewService {
	@Autowired
	ReviewDao reviewDao;

	public List<Review> selectReviewList(List<Product> productList) {
		return reviewDao.selectReviewList(productList);
	}

	public int insertReview(Review review) {
		return reviewDao.insertReview(review);
	}

	public Review checkReview(int checkCno) {
		return reviewDao.checkReview(checkCno);
	}
}
