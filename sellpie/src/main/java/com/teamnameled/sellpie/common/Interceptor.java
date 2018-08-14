package com.teamnameled.sellpie.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handle){ 
		
		System.out.println("인터셉터 호출");
			try {
				if(null==request.getSession().getAttribute("user")){
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
