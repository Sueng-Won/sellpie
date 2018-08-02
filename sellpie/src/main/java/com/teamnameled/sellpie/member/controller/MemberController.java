package com.teamnameled.sellpie.member.controller;


import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamnameled.sellpie.common.TempKey;
import com.teamnameled.sellpie.member.model.service.MemberService;
import com.teamnameled.sellpie.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	

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
		
		if(null==member){
			String setfrom = "btod88@gmail.com";         
		    String tomail  = email;    // 받는 사람 이메일
		    String title   = "#Sellpie 인증 메일입니다.";      // 제목
		    String content = "인증번호는1234입니다.";    // 내용
		   
		    try {
		      MimeMessage message = mailSender.createMimeMessage();
		      MimeMessageHelper messageHelper 
		                        = new MimeMessageHelper(message, true, "UTF-8");
		 
		      messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
		      messageHelper.setTo(tomail);     // 받는사람 이메일
		      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
		      messageHelper.setText(content);  // 메일 내용
		     
		      mailSender.send(message);
		    } catch(Exception e){
		      System.out.println(e);
		    }
		}
		
		return member;
	}
	//이메일 보내기 메소드..
	
	
}
