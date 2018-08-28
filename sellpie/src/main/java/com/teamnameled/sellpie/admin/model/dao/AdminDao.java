package com.teamnameled.sellpie.admin.model.dao;

import java.util.List;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.admin.model.vo.Admin;
import com.teamnameled.sellpie.seller.model.vo.Seller;

@Repository
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	public Admin adminLogin(Admin admin) {
		
		return sqlSession.selectOne("adminMapper.selectAdmin", admin);
	}


	public int insertAdmin(Admin admin) {
		return sqlSession.insert("adminMapper.insertAdmin", admin);
	}


	public List<Seller> selectSellerList() {
		return sqlSession.selectList("adminMapper.selectSellerList");
	}


	public int confirmSeller(int sNo) {
		return sqlSession.update("SellerMapper.confirmSeller", sNo);
	}

}
