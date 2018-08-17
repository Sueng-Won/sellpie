package com.teamnameled.sellpie.friend.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.friend.model.vo.FriendVo;
import com.teamnameled.sellpie.member.model.vo.Member;


@Repository
public class FriendDao {
   
   @Autowired
   SqlSessionTemplate sqlSession;

   public List<Member> selectfList3(String email2) {
      return sqlSession.selectList("friendMapper.selectfList3",email2);
   }

   public List<Member> selectfList4(String email2) {
      return sqlSession.selectList("friendMapper.selectfList4",email2);
   }

	public FriendVo selectFriend1(String email) {
		return sqlSession.selectOne("friendMapper.selectFriend1",email);
	}
	
	public FriendVo selectFriend2(String email) {
		return sqlSession.selectOne("friendMapper.selectFriend2",email);
	}

	public List<String> selectfList6(String email2) {
		return sqlSession.selectList("friendMapper.selectfList6",email2);
	}

	public int friendDelect(Map<String, String> emailMap) {
		return sqlSession.delete("friendMapper.friendDelect", emailMap);
	}

	public int friendApplyInsert(Map<String, String> emailMap) {
		return sqlSession.insert("friendMapper.friendApplyInsert", emailMap);
	}

	public int friendApplyDelete(Map<String, String> emailMap) {
		return sqlSession.delete("friendMapper.friendApplyDelete", emailMap);
	}

	public List<Member> selectfList7(String email) {
		return sqlSession.selectList("friendMapper.selectfList7",email);
	}

	public int friendAcceptUpdate(Map<String, String> emailMap) {
		return sqlSession.update("friendMapper.friendAcceptUpdate",emailMap);
	}

	public int friendRefuseDelete(Map<String, String> emailMap) {
		return sqlSession.delete("friendMapper.friendRefuseDelete",emailMap);
	}

	public String selectApplyCheck(Map<String, String> emailMap) {
		return sqlSession.selectOne("friendMapper.selectApplyCheck",emailMap);
	}
}