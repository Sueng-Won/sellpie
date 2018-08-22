package com.teamnameled.sellpie.member.model.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Date;
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
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import com.teamnameled.sellpie.member.model.dao.MemberDao;
import com.teamnameled.sellpie.member.model.vo.Member;
import com.teamnameled.sellpie.seller.model.vo.Seller;

@Service
public class MemberService  {
	@Autowired
	MemberDao dao;
	
	@Autowired
	BCryptPasswordEncoder bpe;

	public Member checkEmail(String email) {
		return dao.userLogin(email);
	}

	public int insertMember(Member member) throws Exception{
		String encPassword = bpe.encode(member.getPwd());
		member.setPwd(encPassword);
		System.out.println(encPassword);
		return dao.insertMember(member);
	}


	public int updateUserPwd(Member member) throws Exception {
		String encPassword = bpe.encode(member.getPwd());
		member.setPwd(encPassword);
		return dao.updateUserPwd(member);
	}

	public List<Member> searchMemberList(String searchText) {
		return dao.searchMemberList(searchText);
	}

	public Member userLogin(Member member) {
		String userEncPassword = null;
		String email = member.getEmail();
		Member result = dao.userLogin(email);
		
		if(null!=result){
			userEncPassword = result.getPwd();			
			if(bpe.matches(member.getPwd(), userEncPassword)){
				System.out.println(result);
			}else{
				result = null;
			}
		}
		return result;
	}

	public void keepLogin(String email, String sessionId, Date next) {
		dao.keepLogin(email, sessionId, next);

		
	}


	public Member checkUserSessionKey(String sessionId) {
		return dao.checkUserSessionKey(sessionId);

	}

	public int modifyUserInfo(Member member) throws Exception {
		String encPassword = bpe.encode(member.getPwd());
		member.setPwd(encPassword);
		return dao.modifyUserInfo(member);
	}

	public int updateImg(Member member) {
		System.out.println(member);
		return dao.updateImg(member);
	}

	public StreamResult applySeller(Seller seller) {
		//xml틀 생성
		StreamResult result=null;
		String savePath = "resources/applySeller/applyList.xml";
		DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder docBuilder = null;
		try {
			docBuilder = docFactory.newDocumentBuilder();
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		}
		//Document Element 생성
		Document doc = docBuilder.newDocument();
		Element applyEmail = doc.createElement("email");
		doc.appendChild(applyEmail);
		
		//Element에 대한 속성값 정의
		applyEmail.setAttribute("acNum",seller.getAcNum());
		applyEmail.setAttribute("bank",seller.getBank());
		applyEmail.setAttribute("zipcode",seller.getZipcode());
		applyEmail.setAttribute("addr",seller.getAddr());
		applyEmail.setAttribute("addrDetail",seller.getAddrDetail());
		applyEmail.setAttribute("pCategory", seller.getpCategory());
		applyEmail.setAttribute("reason",seller.getReason());
		
		//xml파일 생성
		TransformerFactory transformerFactory = TransformerFactory.newInstance();
		Transformer transformer = null;
		try {
			//데이터 parsing
			transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
		DOMSource source = new DOMSource(doc);
		try {
			result = new StreamResult(new FileWriter(savePath, true));
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
