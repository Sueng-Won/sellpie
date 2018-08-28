package com.teamnameled.sellpie.common;

import java.util.Enumeration;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.stereotype.Component;

import com.teamnameled.sellpie.admin.model.dao.AdminDao;
import com.teamnameled.sellpie.admin.model.service.AdminService;
import com.teamnameled.sellpie.member.model.vo.Member;


public class VisitCount implements HttpSessionAttributeListener, HttpSessionListener {
	
	
	
	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
		HttpSession session = arg0.getSession();
		System.out.println("세션생성시 호출됩니까?");
		Enumeration<String> sessionName = session.getAttributeNames();
		while(sessionName.hasMoreElements()){
			String sn = sessionName.nextElement();
			System.out.println("세션내임"+sn);
			if(sn.equals("user")){
				Member user = (Member)session.getAttribute("user");
				String email = user.getEmail();
				System.out.println("세션리스너를 통해 생성"+email);
				/*int result = adminService.insertCount(email);
				System.out.println(result);
				AdminService adminService = new AdminService();
				AdminDao dao = new AdminDao();
				dao.insertCount(email);*/
			}
		}
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		
		
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}

}
