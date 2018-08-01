package com.teamnameled.sellpie.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamnameled.sellpie.member.model.service.MemberService;
import com.teamnameled.sellpie.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;

	@RequestMapping("login.do")
	public String loginPage(){
		// 로그인 페이지로 이동
		return "member/login";
	}
	@RequestMapping("memberJoin.do")
	public String memberJoin(){
		//회원가입 1 페이지(이메일입력)로 이동
		return "member/join/email";
	}
	@RequestMapping("checkEmail.do")
	public @ResponseBody Member checkEmail(String email){
//		@RequestMapping(value="idCheck.do", produces="application/text; charset=utf-8")
//		public @ResponseBody String checkMemberId(String userId){
//			MemberVo member = new MemberVo();
//			member.setUserId(userId);
//			member = memberService.selectMember(member);
//			return member==null?"사용가능합니다.":"중복아이디입니다.";
//		}
		//이메일 조건으로 회원정보 검색하기
		Member member =  memberService.checkEmail(email);
		
		return member;
	}
	
}
