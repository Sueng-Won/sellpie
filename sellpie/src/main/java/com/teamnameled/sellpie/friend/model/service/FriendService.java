package com.teamnameled.sellpie.friend.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.friend.model.dao.FriendDao;
import com.teamnameled.sellpie.member.model.vo.Member;

@Service
public class FriendService {
   
   @Autowired
   FriendDao dao;

   public List<Member> selectfList3(String email) {
      return dao.selectfList3(email);
   }

   public List<Member> selectfList4(String email) {
      return dao.selectfList4(email);
   }
   
   
}