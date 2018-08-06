package com.teamnameled.sellpie.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.member.model.dao.MemberDao;
import com.teamnameled.sellpie.member.model.vo.Member;

@Service
public class MemberService {
	@Autowired
	MemberDao dao;
	
	@Autowired
	BCryptPasswordEncoder bpe;

	public Member checkEmail(String email) {
		return dao.selectByEmail(email);
	}

	public int insertMember(Member member) {
		String encPassword = bpe.encode(member.getPwd());
		member.setPwd(encPassword);
		System.out.println(encPassword);
		return dao.insertMember(member);
	}

	public Member userLogin(Member member) {
		String userEncPassword = null;
		String email = member.getEmail();
		Member result = dao.selectByEmail(email);
		System.out.println(result);
		
		if(null!=result){
			userEncPassword = result.getPwd();			
			if(bpe.matches(member.getPwd(), userEncPassword)){
				System.out.println(result);
			}else{
				result = null;
			}
		}
		return result;
	}


}
