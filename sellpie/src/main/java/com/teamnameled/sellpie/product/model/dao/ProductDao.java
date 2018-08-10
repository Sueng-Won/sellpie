package com.teamnameled.sellpie.product.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.product.model.vo.Product;

@Repository
public class ProductDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<Product> selectProductList(int sNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ProductMapper.selectProductList",sNo);
	}

	public Product selectProduct(int pNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ProductMapper.selectProduct", pNo);
	}

}
