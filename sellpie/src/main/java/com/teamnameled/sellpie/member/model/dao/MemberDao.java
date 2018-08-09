package com.teamnameled.sellpie.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.member.model.vo.Member;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member selectByEmail(String email) {
		return sqlSession.selectOne("memberMapper.selectEmail", email);
	}

	public int insertMember(Member member) {
		return sqlSession.insert("memberMapper.insertMember", member);
	}

	public List<Member> searchMemberList(String searchText) {
		return sqlSession.selectList("memberMapper.searchMemberList", searchText);
	}

}
