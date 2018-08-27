package com.teamnameled.sellpie.member.controller;


import java.io.File;
import java.sql.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.SessionScope;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.teamnameled.sellpie.contract.controller.ContractController;
import com.teamnameled.sellpie.contract.model.service.ContractService;
import com.teamnameled.sellpie.contract.model.vo.Contract;
import com.teamnameled.sellpie.common.GenerateCertNumber;
import com.teamnameled.sellpie.contract.model.vo.ContractWithName;
import com.teamnameled.sellpie.contract.model.vo.SalesListVo;
import com.teamnameled.sellpie.member.model.service.MemberService;
import com.teamnameled.sellpie.member.model.vo.Member;
import com.teamnameled.sellpie.seller.model.service.SellerService;
import com.teamnameled.sellpie.seller.model.vo.SalesStatisticsVo;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	ContractService contractService;
	
	@Autowired
	SellerService sellerService;

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
	public String getBirth(HttpSession session){
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
			GenerateCertNumber gcn = new GenerateCertNumber();
			
			int randomNum = gcn.excuteGenerate();
			String setfrom = "whattoday2018@gmail.com";         
		    String tomail  = email;    // 받는 사람 이메일
		    String title   = "#Sellpie 인증 메일입니다.";      // 제목
		    String content = "인증번호는 ["+randomNum+"] 입니다.";    // 내용
		    String parseNum = String.valueOf(randomNum);
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
		      map.put("randomNum", parseNum);
		    } catch(Exception e){
		      System.out.println(e);
		    }
		}
		
		return map;
	}
	@RequestMapping("changePwdAu.do")
	public @ResponseBody HashMap<String, String> changePwd(String email){
		//이메일로 회원정보 검색..
		System.out.println(email);
		Member member =  memberService.checkEmail(email);
		System.out.println(member);
		HashMap<String, String> map = new HashMap<String, String>();
		
		
		if(null!=member){
			GenerateCertNumber gcn = new GenerateCertNumber();
			
			int randomNum = gcn.excuteGenerate();
			String setfrom = "whattoday2018@gmail.com";         
		    String tomail  = email;    // 받는 사람 이메일
		    String title   = "#Sellpie 인증 메일입니다.";      // 제목
		    String content = "인증번호는 ["+randomNum+"] 입니다.";    // 내용
		    String parseNum = String.valueOf(randomNum);
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
		      map.put("result", "1");
		      map.put("randomNum", parseNum);
		      map.put("email", email);
		    } catch(Exception e){
		      System.out.println(e);
		    }
		}else{
			map.put("result", "2");
			
		}
		return map;
	}
	

	@RequestMapping(value = "signUp.do", method = RequestMethod.POST)
	public ModelAndView memberJoin(Member member, HttpSession session, ModelAndView mav, HttpServletRequest request){
		
		int result = 0;
		try {
			result =  memberService.insertMember(member);
			if(result>0){
				session.setAttribute("user", member);
				
				mav.setViewName("redirect:selectBoardList.do");
			}else{
				mav.addObject("msg", "회원 가입 처리중 에러 발생!");
				mav.setViewName("common/errorPage");
			}
			
		} catch (Exception e) {
			mav.addObject("msg", "회원 가입 처리중 에러 발생!");
			mav.setViewName("common/errorPage");
			e.printStackTrace();
		}
		return mav;
	}
	//테스트 쿠키삭제
	@RequestMapping("deleteCookie.do")
	public String test(HttpServletRequest request, HttpServletResponse response){
		Cookie[] cookies = request.getCookies();
	     
	    if(cookies != null){
	        for(int i=0; i < cookies.length; i++){
	             
	            // 쿠키의 유효시간을 0으로 설정하여 만료시킨다
	            cookies[i].setMaxAge(0) ;
	             
	            // 응답 헤더에 추가한다
	            response.addCookie(cookies[i]) ;
	        }
	}
	    return "redirect:signIn.do";
	}
	//signIn 테스트
	@RequestMapping("signIn.do")
	public String signIn(){
		return "signIn/signIn";
	}
	@RequestMapping("changePwd.do")
	public String changePwd(){
		return "member/changePwd";
	}
	//로그인하기
	@RequestMapping(value="userLogin.do", method= RequestMethod.POST)
	public @ResponseBody HashMap<String, String> loginUser(String email, String pwd, boolean isUseCookie, HttpSession session, HttpServletResponse response){
		System.out.println(isUseCookie);
		if(session.getAttribute("user")!=null){
			session.removeAttribute("user");
		}
		Member member = new Member();
		member.setEmail(email);
		member.setPwd(pwd);
		Member user = memberService.userLogin(member);
		HashMap<String, String> map = new HashMap<String, String>();
		if(null!=user){
			session.setAttribute("user", user);
			map.put("user", user.getName());
			map.put("result", "1");
			if(isUseCookie){
				Cookie cookie = new Cookie("loginCookie", session.getId());//??세션아이디?
				cookie.setPath("/");
				int period = 60*60*24*3;
				cookie.setMaxAge(period);
				response.addCookie(cookie);
				Date sessionLimit = new Date(System.currentTimeMillis()+(1000*period));
				memberService.keepLogin(user.getEmail(), session.getId(), sessionLimit);
			}
		}else{
			map.put("result", "2");
		}
		return map;
	}
	//로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response){
		if(null!=session.getAttribute("user")){
			Member member = (Member)session.getAttribute("user");
			session.invalidate();			
		
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		if(loginCookie!=null){
			loginCookie.setPath("/");
			loginCookie.setMaxAge(0);
			response.addCookie(loginCookie);
			Date date = new Date(System.currentTimeMillis());
			memberService.keepLogin(member.getEmail(), session.getId(), date);
			}
		}
		return "redirect:signIn.do";
	}
	@RequestMapping("changeUserPwd.do")
	public String changeUserPwd(){
		return "member/changeUserPwd";
	}
	@RequestMapping(value="updateUserPwd.do", method=RequestMethod.POST)
	public String updateUserPwd(Member member){
		System.out.println(member);
		try {
			int result = memberService.updateUserPwd(member);
			System.out.println(result);
		} catch (Exception e) {
			System.out.println("비밀번호 수정중 에ㅓㄹ");
			e.printStackTrace();
		}
		
		return "redirect:signIn.do";
	}
	@RequestMapping(value="memberSearch.do")
	public String searchMember(String searchText,HttpServletRequest request) {
		List<Member> memberList = memberService.searchMemberList(searchText);
		request.setAttribute("memberList", memberList);
		request.setAttribute("searchText", searchText);
		return "member/searchMemberList";
	}
	@RequestMapping("updateUserInfo.do")
	public String updateUserInfo(){
		return "member/updateUserInfo";
	}
		@RequestMapping("updateMember.do")
		public String updateMember(){
			return "member/memberUpdate";
		}
	@RequestMapping("userImgUpload.do")
	public @ResponseBody String userImgUpload(MultipartHttpServletRequest request, HttpServletRequest servletRequest, Member member, HttpSession session){
		// 저장 경로 설정
        String root = servletRequest.getSession().getServletContext().getRealPath("resources");
        System.out.println(root);
        String path = root+"\\images\\userImg";
        String newFileName = ""; // 업로드 되는 파일명
         
        File dir = new File(path);
        if(!dir.isDirectory()){
            dir.mkdirs();
        }
         
        	Iterator<String> file = request.getFileNames();
            String uploadFile = file.next();
                         
            MultipartFile mFile = request.getFile(uploadFile);
            String fileName = mFile.getOriginalFilename();
            System.out.println("실제 파일 이름 : " +fileName);
            
            
            
            newFileName = System.currentTimeMillis()+"."
                    +fileName.substring(fileName.lastIndexOf(".")+1);
            try {
                mFile.transferTo(new File(path+"\\"+newFileName));
                Member userData = memberService.checkEmail(member.getEmail());
                userData.setProfileImg(newFileName);
                int result = memberService.updateImg(userData);
                if(0<result){
                	session.setAttribute("user", userData);
                }else{
                	System.out.println("사진 업로드 에러");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
         
        System.out.println("id : " + request.getParameter("id"));
        System.out.println("pw : " + request.getParameter("pw"));
        
		return "msg";
	}
	@RequestMapping(value = "modifyUserInfo.do", method=RequestMethod.POST)
	public ModelAndView modifyUserInfo(Member member, ModelAndView mav){
		System.out.println(member);
			try {
				int result = memberService.modifyUserInfo(member);
				if(0<result){
					mav.setViewName("member/memberUpdate");
				}
				
			} catch (Exception e) {
				mav.addObject("msg", "회원 가입 처리중 에러 발생!");
				mav.setViewName("common/errorPage");
				e.printStackTrace();
			}
			
		
		return mav;
	}
	
	@RequestMapping("errorPage.do")
	public String errorPage(){
		return "common/errorPage";
	}
	
	//개인정보수정-구매현황
	@RequestMapping("purchaseList.do")
	public String purchaseList(String email, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member user = (Member)session.getAttribute("user");
		List<Contract> purchaseList = contractService.selectContractList(user.getEmail());
		List<ContractWithName> purchaseListWithName = contractService.selectContractListWithName(purchaseList);
		request.setAttribute("cList", purchaseList);
		request.setAttribute("pList", purchaseListWithName);
		return "member/purchaseList";
	}
	//개인정보수정-판매현황
	@RequestMapping("salesList.do")
	public String salesList(HttpServletRequest request, SalesListVo salesListVo) {
		HttpSession session = request.getSession();
		Member user = (Member)session.getAttribute("user");
		salesListVo.setEmail(user.getEmail());
		List<SalesListVo> pList = contractService.selectSalesList(salesListVo);
		List<SalesStatisticsVo> sList = sellerService.selectSalesStatisticsList(user.getEmail());
		request.setAttribute("pList", pList);
		request.setAttribute("sList", sList);
		return "member/salesList";
	}
	
	@RequestMapping("inputUrlToSession.do")
	public @ResponseBody int inputUrlToSession(HttpServletRequest request, String url) {
		int result = 1;
		System.out.println(url);
		HttpSession session = request.getSession();
		session.setAttribute("url", url);
		return result;
	}
	@RequestMapping("applyAdForm.do")
	public String applyAdForm() {
		return "member/applyAdForm";
	}
}
