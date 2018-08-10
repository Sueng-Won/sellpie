package com.teamnameled.sellpie.review.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.product.model.vo.Product;
import com.teamnameled.sellpie.review.model.vo.Review;

@Repository
public class ReviewDao {
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Review> selectReviewList(List<Product> productList) {
		return sqlSession.selectList("ReviewMapper.selectReviewList", productList);
	}
}
