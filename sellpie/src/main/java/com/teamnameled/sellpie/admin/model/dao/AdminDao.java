package com.teamnameled.sellpie.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.admin.model.vo.Admin;

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

}
