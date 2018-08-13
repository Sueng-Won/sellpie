package com.teamnameled.sellpie.friend.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class FriendController {
	/*@RequestMapping("friendList.do")
	public ModelAndView friendList(ModelAndView mv) {
		
		List<FriendVo> list = service.friendList();
		
		mv.addObject("list", list);
		mv.setViewName("friend/friendForm");
		System.out.println("안녕");
		return mv;
	}*/
	
	@RequestMapping("friendForm.do")
	public String friendForm() {
			return "/friend/friendForm";
	}
}
