package com.teamnameled.sellpie.seller.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.seller.model.vo.Seller;

@Repository
public class SellerDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<Seller> selectSellerList(String selTag) {
		return sqlSession.selectList("SellerMapper.selectSellerList",selTag);
	}
	
}
