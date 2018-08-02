package com.teamnameled.sellpie.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.member.model.dao.MemberDao;
import com.teamnameled.sellpie.member.model.vo.Member;

@Service
public class MemberService {
	@Autowired
	MemberDao dao;

	public Member checkEmail(String email) {
		return dao.selectByEmail(email);
	}
	

}
