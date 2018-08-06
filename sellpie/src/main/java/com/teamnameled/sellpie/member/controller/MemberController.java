package com.teamnameled.sellpie.member.controller;


import java.util.HashMap;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping("getPwd.do")
	public String getPwd(){
		return "member/join/pwd";
	}
	@RequestMapping("getName.do")
	public String getName(){
		return "member/join/name";
	}
	@RequestMapping("getGender.do")
	public String getGender(){
		return "member/join/gender";
	}
	@RequestMapping("getPhone.do")
	public String getPhone(){
		return "member/join/phone";
	}
	@RequestMapping("getBirth.do")
	public String getBirth(){
		return "member/join/birth";
	}
	@RequestMapping("checkEmail.do")
	public @ResponseBody HashMap<String, String> checkEmail(String email){
		//이메일 조건으로 회원정보 검색하기
		Member member =  memberService.checkEmail(email);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("msg", "해당 정보는 존재합니까?");
		map.put("result", "1");
		if(null==member){
			String setfrom = "whattoday2018@gmail.com";         
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
		      map.put("msg", "메일이 정상 발송 되었습니다.");
		      map.put("result", "2");
		    } catch(Exception e){
		      System.out.println(e);
		    }
		}
		
		return map;
	}
	

	@RequestMapping(value = "signUp.do", method = RequestMethod.POST)
	public String memberJoin(Member member){
		
		int result =  memberService.insertMember(member);
		//aop 처리..
		System.out.println(member);
		return "redirect:main.do";
	}
	//테스트
	@RequestMapping("test.do")
	public String test(){
		return "member/join/test";
	}
	//signIn 테스트
	@RequestMapping("signIn.do")
	public String signIn(){
		return "signIn/signIn";
	}
	//로그인하기
	@RequestMapping(value="userLogin.do", method= RequestMethod.POST)
	public @ResponseBody HashMap<String, String> loginUser(String email, String pwd, HttpSession session){
		System.out.println("email"+email);
		System.out.println("pwd"+pwd);
		
		Member member = new Member();
		member.setEmail(email);
		member.setPwd(pwd);
		Member user = memberService.userLogin(member);
		HashMap<String, String> map = new HashMap<String, String>();
		if(null!=user){
			session.setAttribute("user", user);
			map.put("user", user.getName());
			map.put("result", "1");
		}else{
			map.put("result", "2");
		}
		return map;
	}
}
