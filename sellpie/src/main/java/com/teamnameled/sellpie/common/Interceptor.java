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
				if(null==request.getSession().getAttribute("prevent")){
					System.out.println("prevent 발동..");
					response.sendRedirect("/sellpie/signIn.do");
				
				}
			} catch (IOException e) {
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
