package com.teamnameled.sellpie.friend.model.vo;

import java.util.List;

import org.springframework.stereotype.Component;

import com.teamnameled.sellpie.member.model.vo.Member;

@Component
public class FriendVo {

	private int ano;
	private String applicantEmail; 
	private String subjectEmail;
	private char isapply = 'N';
	private List<Member> member;
	
	public FriendVo() {
		
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public String getApplicantEmail() {
		return applicantEmail;
	}

	public void setApplicantEmail(String applicantEmail) {
		this.applicantEmail = applicantEmail;
	}

	public String getSubjectEmail() {
		return subjectEmail;
	}

	public void setSubjectEmail(String subjectEmail) {
		this.subjectEmail = subjectEmail;
	}

	public char getIsapply() {
		return isapply;
	}

	public void setIsapply(char isapply) {
		this.isapply = isapply;
	}

	public List<Member> getMember() {
		return member;
	}

	public void setMember(List<Member> member) {
		this.member = member;
	}

	

}
