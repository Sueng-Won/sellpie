package com.teamnameled.sellpie.friend.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.teamnameled.sellpie.board.model.service.BoardService;
import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.friend.model.service.FriendService;
import com.teamnameled.sellpie.friend.model.vo.FriendVo;
import com.teamnameled.sellpie.member.model.vo.Member;



@Controller
public class FriendController {
	@Autowired
	FriendService friendService;
	
	/*@RequestMapping("friendList.do")
	public ModelAndView friendList(ModelAndView mv) {
		
		List<FriendVo> list = service.friendList();
		
		mv.addObject("list", list);
		mv.setViewName("friend/friendForm");
		System.out.println("안녕");
		return mv;
	}*/
	
	@RequestMapping("friendForm.do")
	public ModelAndView friendForm(HttpSession session, ModelAndView mv) {
			
			String email = "test2@naver.com";
			Member member = new Member();
			member.setEmail(email);
			
			/*Member member = session.getAttribute("user");*/
			
			List<Member> fList3 = friendService.selectfList3(email); //응답자일 때
			List<Member> fList4 = friendService.selectfList4(email); //요청자일 때
			if(null!=fList4){
				for(int i=0; i<fList4.size(); i++){
					fList3.add(fList4.get(i));
				}
			}
			
			/*List<FriendVo> fList = friendService.selectmList(fList3);*/
			
			mv.addObject("fList", fList3);
			mv.setViewName("friend/friendForm");
			
			return mv;
	}
}
