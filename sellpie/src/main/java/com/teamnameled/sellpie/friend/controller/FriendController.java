package com.teamnameled.sellpie.friend.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.teamnameled.sellpie.board.model.service.BoardService;
import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.friend.model.service.FriendService;
import com.teamnameled.sellpie.friend.model.vo.FriendVo;
import com.teamnameled.sellpie.member.model.service.MemberService;
import com.teamnameled.sellpie.member.model.vo.Member;
import com.teamnameled.sellpie.seller.model.service.SellerService;
import com.teamnameled.sellpie.seller.model.vo.Seller;



@Controller
public class FriendController {
   @Autowired
   FriendService friendService;
   
   @Autowired
	BoardService boardService;
   
   @Autowired
	MemberService memberService;
   
   @Autowired
	SellerService sellerService;
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
         List<Member> fList7 = friendService.selectfList7(email); //다른 사람한테 친구 신청 올때
         
         System.out.println(fList7);
         if(null!=fList4){
            for(int i=0; i<fList4.size(); i++){
               fList3.add(fList4.get(i));
            }
         }
         
         /*List<FriendVo> fList = friendService.selectmList(fList3);*/
         
         mv.addObject("AfList",fList7);
         mv.addObject("fList", fList3);
         mv.setViewName("friend/friendForm");
         
         return mv;
   }
   
   @RequestMapping("searchFriendForm.do")
   public ModelAndView searchFriendForm(ModelAndView mv, String email) {
	   	String email2 = "test2@naver.com";
	   	
	    Member fmember = memberService.checkEmail(email);       // 검색한 이메일 체크 
	    Seller sellerInfo = sellerService.selectSeller(email);  // 셀러에 있는 이메일 체크
	    		
	   	List<String> friend = boardService.selectfList5(email);  
	   	List<BoardVo> fblist = boardService.selectbList(friend); 
	   	
        List<String> fList = friendService.selectfList6(email2);
        Map<String, String> emailMap = new HashMap<String, String>();
        emailMap.put("myEmail", email2);
        emailMap.put("email", email);
        
        String applyCheck = friendService.selectApplyCheck(emailMap);
        
        
        System.out.println(applyCheck);
        
        fList.add(email2);
        
        for(int i = 0 ; i < fList.size() ; i ++) {
        	if(email.equals(fList.get(i))) {
        		mv.addObject("applyflag", "Y");
        		
        	}
        }
        
        mv.addObject("applyCheck", applyCheck);
	    mv.addObject("member", fmember);
	    mv.addObject("sellerInfo", sellerInfo);
	   	mv.addObject("fblist", fblist);
        mv.setViewName("friend/searchFriendForm");
	   	
        return mv;
   }
   
   @RequestMapping("friendDelect.do")
   public String friendDelect(String email) {
	   String myEmail = "test2@naver.com";
	   Map<String, String> emailMap = new HashMap<String, String>();
	   emailMap.put("myEmail", myEmail);
	   emailMap.put("email", email);
	   
	   int result = friendService.friendDelect(emailMap);
	   
	   if(result > 0) {
		   System.out.println("friendDelect 성공");
	   }else {
		   System.out.println("friendDelect 실패");
	   }
	   
	   return "redirect:friendForm.do";
   }   
   
   @RequestMapping("friendApply.do")
   public @ResponseBody String friendApply(String email) {
	   String myEmail = "test2@naver.com";
	   System.out.println(email);
	   Map<String, String> emailMap = new HashMap<String, String>();
	   emailMap.put("myEmail", myEmail);
	   emailMap.put("email", email);
	   
	   int result = friendService.friendApplyInsert(emailMap);
	   
	   if(result > 0) {
		   System.out.println("friendApply 성공");
	   }else {
		   System.out.println("friendApply 실패");
	   }
	   
	   return email;
   }   
   
   @RequestMapping("friendApplyDelete.do")
   public @ResponseBody String friendApplyDelete(String email) {
	   String myEmail = "test2@naver.com";
	   System.out.println(email);
	   Map<String, String> emailMap = new HashMap<String, String>();
	   emailMap.put("myEmail", myEmail);
	   emailMap.put("email", email);
	   
	   int result = friendService.friendApplyDelete(emailMap);
	   
	   if(result > 0) {
		   System.out.println("friendApplyDelete 성공");
	   }else {
		   System.out.println("friendApplyDelete 실패");
	   }
	   return email;
   }  
   
   @RequestMapping("friendAcceptUpdate.do")
   public String friendAcceptUpdate(String email) {
	   String myEmail = "test2@naver.com";
	   
	   Map<String, String> emailMap = new HashMap<String, String>();
	   emailMap.put("myEmail", myEmail);
	   emailMap.put("email", email);
	   
	   int result = friendService.friendAcceptUpdate(emailMap);
	   
	   if(result > 0) {
		   System.out.println("friendAcceptUpdate 성공");
	   }else {
		   System.out.println("friendAcceptUpdate 실패");
	   }
	   return "redirect:friendForm.do";
   }   
   
   @RequestMapping("friendRefuseDelete.do")
   public String friendRefuseDelete(String email) {
	   String myEmail = "test2@naver.com";
	   
	   Map<String, String> emailMap = new HashMap<String, String>();
	   emailMap.put("myEmail", myEmail);
	   emailMap.put("email", email);
	   
	   int result = friendService.friendRefuseDelete(emailMap);
	   
	   if(result > 0) {
		   System.out.println("friendRefuseDelete 성공");
	   }else {
		   System.out.println("friendRefuseDelete 실패");
	   }
	   
	   return "redirect:friendForm.do";
   }   
   
}