package com.teamnameled.sellpie.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.admin.model.dao.AdminDao;
import com.teamnameled.sellpie.admin.model.vo.Admin;
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


	public List<Seller> selectSellerList() {
		return dao.selectSellerList();
	}


	public int confirmSeller(int sNo) {
		return dao.confirmSeller(sNo);
	}

}
