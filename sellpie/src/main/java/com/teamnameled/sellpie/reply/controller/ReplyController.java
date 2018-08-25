package com.teamnameled.sellpie.reply.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamnameled.sellpie.member.model.vo.Member;
import com.teamnameled.sellpie.reply.model.service.ReplyService;
import com.teamnameled.sellpie.reply.model.vo.ReplyVo;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyService replyService;
	
	@RequestMapping("selectReply.do")
	public @ResponseBody List<ReplyVo> selectReply(String bno){
		
		List<ReplyVo> replies = replyService.selectReply(bno);
		
		return replies;
	}
	
	@RequestMapping("insertReply.do")
	public @ResponseBody String insertReply(String bno, String content, HttpSession session){
		ReplyVo inReply = new ReplyVo();
		inReply.setBno(Integer.parseInt(bno));
		inReply.setContent(content);
		inReply.setWriter(((Member)session.getAttribute("user")).getEmail());
		int result = replyService.insertReply(inReply);
		
		if(0<result){
		}else{
			System.out.println("댓글 insert 중 에러발생");
		}
		
		
		
		return bno;
	}

}
