package com.teamnameled.sellpie.common;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.teamnameled.sellpie.member.model.service.MemberService;
import com.teamnameled.sellpie.member.model.vo.Member;

   

public class Interceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	MemberService service;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handle){ 

		System.out.println("인터셉터 호출");
		System.out.println(request.getRequestURI());
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("user");
			try {
				if(null==obj){
					Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
					if(loginCookie!=null){
						String sessionId = loginCookie.getValue();
						System.out.println(sessionId);
						Member member = service.checkUserSessionKey(sessionId);
						if(member!=null){
							session.setAttribute("user", member);
							return true;
						}
					}else if(request.getRequestURI().equals("/sellpie/signIn.do")){
						return true;
					}
					System.out.println("로그인 처리가 안되어있습니다..");
					response.sendRedirect("/sellpie/errorPage.do");
					return false;
				
				}
			} catch (IOException e) {
				System.out.println("??에러찍음?");
				e.printStackTrace();
			}
			
		return true; 
	}
	@Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
        /*int prevent = (int)request.getSession().getAttribute("prevent");
        System.out.println(prevent);*/
    }



}
