package com.teamnameled.sellpie.friend.model.dao;

import java.util.List;

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

	
	
}