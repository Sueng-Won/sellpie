package com.teamnameled.sellpie.contract.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ContractDao {
	@Autowired
	SqlSessionTemplate sqlSession;
}
