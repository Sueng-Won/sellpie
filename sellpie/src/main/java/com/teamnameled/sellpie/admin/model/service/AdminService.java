package com.teamnameled.sellpie.admin.model.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

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
	
	public StreamResult applyAd(BoardVo board, String root) {
		//xml틀 생성
		StreamResult result=null;
		String folderPath = root+"\\applySeller";
		
		File folder = new File(folderPath);
		if (!folder.exists()) {
	          folder.mkdirs();
	      }
		
		String filePath = folderPath + "\\applyList.xml";
		File file = new File(filePath);
		
		/*
		//파일 읽기 권한 부여
		if (file.setReadable(true, false))
		    System.out.println(" 파일에 읽기 권한을 부여하였습니다.");
		else
		    System.out.println(" 파일에 읽기 권한을 부여할 수 없습니다.");
		//파일 쓰기 권한 부여
		if (file.setWritable(true, false))
		    System.out.println(" 파일에 쓰기 권한을 부여하였습니다.");
		else
		    System.out.println(" 파일에 쓰기 권한을 부여할 수 없습니다.");
		*/
		
		DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder docBuilder = null;
		try {
			docBuilder = docFactory.newDocumentBuilder();
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		}
		//Document Element 생성
		Document doc = null;
		Element applier = null;
		Element member = null;
		if(!file.exists()) {
			doc = docBuilder.newDocument();
			applier = doc.createElement("applier");
			member = doc.createElement("member");
			applier.appendChild(member);
		}else {
			try {
				doc = docBuilder.parse(file);
			} catch (SAXException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			member = doc.createElement("member");
			applier = doc.
			applier.appendChild(member);
		}
		
		//Element에 대한 속성값 정의
		member.setAttribute("email", seller.getEmail());
		member.setAttribute("acNum",seller.getAcNum());
		member.setAttribute("bank",seller.getBank());
		member.setAttribute("zipcode",seller.getZipcode());
		member.setAttribute("addr",seller.getAddr());
		member.setAttribute("addrDetail",seller.getAddrDetail());
		member.setAttribute("pCategory", seller.getpCategory());
		member.setAttribute("reason",seller.getReason());
		
		
		TransformerFactory transformerFactory = TransformerFactory.newInstance();
		Transformer transformer = null;
		
			try {
				//파일이 없으면 xml 선언부 추가
				transformer = transformerFactory.newTransformer();
				transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
				transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			} catch (TransformerConfigurationException e) {
				e.printStackTrace();
			}
		
		DOMSource source = new DOMSource(doc);
		try {
			result = new StreamResult(new FileOutputStream(filePath, true));
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		try {
			transformer.transform(source, result);
			System.out.println("파일 생성 및 데이터 추가 완료");
		} catch (TransformerException e) {
			e.printStackTrace();
		}
		
		return result;
	}


}
