package com.teamnameled.sellpie.friend.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.member.model.vo.Member;


@Repository
public class FriendDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Member> selectfList3(String email) {
		return sqlSession.selectList("friendMapper.selectfList3",email);
	}

	public List<Member> selectfList4(String email) {
		return sqlSession.selectList("friendMapper.selectfList4",email);
	}

}
