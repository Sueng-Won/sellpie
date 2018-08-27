package com.teamnameled.sellpie.admin.model.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import com.teamnameled.sellpie.admin.model.dao.AdminDao;
import com.teamnameled.sellpie.admin.model.vo.Admin;
import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.seller.model.vo.Seller;

@Service
public class AdminService {
	@Autowired
	AdminDao dao;
	
	@Autowired
	BCryptPasswordEncoder bpe;
	

	public Admin adminLogin(Admin admin) {
		
		Admin adminData = dao.adminLogin(admin);
		
		if(null!= adminData){
			System.out.println("패스워드 변환에러?");
			String adminDataPwd = adminData.getAdminPwd();
			System.out.println(adminDataPwd);
			
			if(bpe.matches(admin.getAdminPwd(),adminDataPwd )){
				System.out.println("로그인 성공");
			}else{
				adminData = null;
			}
		}
		
		
		return adminData;
	}


	public int adminJoin(Admin admin) throws Exception {
		String encPwd = bpe.encode(admin.getAdminPwd());
		admin.setAdminPwd(encPwd);
		return dao.insertAdmin(admin);
	}


	public int insertCount(String email) {
		return dao.insertCount(email);
		
	}


	public List<Admin> selectWeeklyDate() {
		return dao.selectWeeklyDate();
	}

}
