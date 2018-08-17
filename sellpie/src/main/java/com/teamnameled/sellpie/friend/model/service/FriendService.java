package com.teamnameled.sellpie.friend.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.friend.model.dao.FriendDao;
import com.teamnameled.sellpie.friend.model.vo.FriendVo;
import com.teamnameled.sellpie.member.model.vo.Member;

@Service
public class FriendService {
   
   @Autowired
   FriendDao dao;

   public List<Member> selectfList3(String email2) {
      return dao.selectfList3(email2);
   }

   public List<Member> selectfList4(String email2) {
      return dao.selectfList4(email2);
   }
	
	public FriendVo selectFriend1(String email) {
		return dao.selectFriend1(email);
	}
	
	public FriendVo selectFriend2(String email) {
		return dao.selectFriend2(email);
	}

	public List<String> selectfList6(String email2) {
		return dao.selectfList6(email2);
	}

	public int friendDelect(Map<String, String> emailMap) {
		return dao.friendDelect(emailMap);
	}

	public int friendApplyInsert(Map<String, String> emailMap) {
		return dao.friendApplyInsert(emailMap);
	}

	public int friendApplyDelete(Map<String, String> emailMap) {
		return dao.friendApplyDelete(emailMap);
	}

	public List<Member> selectfList7(String email) {
		return dao.selectfList7(email);
	}

	public int friendAcceptUpdate(Map<String, String> emailMap) {
		return dao.friendAcceptUpdate(emailMap);
	}

	public int friendRefuseDelete(Map<String, String> emailMap) {
		return dao.friendRefuseDelete(emailMap);
	}

	public String selectApplyCheck(Map<String, String> emailMap) {
		return dao.selectApplyCheck(emailMap);
	}


	
   
}