package com.teamnameled.sellpie.member.model.service;


import java.sql.Date;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import com.teamnameled.sellpie.member.model.dao.MemberDao;
import com.teamnameled.sellpie.member.model.vo.Member;

@Service
public class MemberService  {
	@Autowired
	MemberDao dao;
	
	@Autowired
	BCryptPasswordEncoder bpe;

	public Member checkEmail(String email) {
		return dao.userLogin(email);
	}

	public int insertMember(Member member) throws Exception{
		String encPassword = bpe.encode(member.getPwd());
		member.setPwd(encPassword);
		System.out.println(encPassword);
		return dao.insertMember(member);
	}


	public int updateUserPwd(Member member) throws Exception {
		String encPassword = bpe.encode(member.getPwd());
		member.setPwd(encPassword);
		return dao.updateUserPwd(member);
	}

	public List<Member> searchMemberList(String searchText) {
		return dao.searchMemberList(searchText);
	}

	public Member userLogin(Member member) {
		String userEncPassword = null;
		String email = member.getEmail();
		Member result = dao.userLogin(email);
		
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

	public void keepLogin(String email, String sessionId, Date next) {
		dao.keepLogin(email, sessionId, next);

		
	}


	public Member checkUserSessionKey(String sessionId) {
		return dao.checkUserSessionKey(sessionId);

	}

	public int modifyUserInfo(Member member) throws Exception {
		String encPassword = bpe.encode(member.getPwd());
		member.setPwd(encPassword);
		return dao.modifyUserInfo(member);
	}

	public int updateImg(Member member) {
		System.out.println(member);
		return dao.updateImg(member);
	}

	public int selectMemberCount() {
		return dao.selectMemberCount();
	}



}
