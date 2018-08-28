package com.teamnameled.sellpie.admin.model.vo;


import org.springframework.stereotype.Component;

@Component
public class Admin {
	private String adminId;
	private String adminPwd;
	private int count;
	private String dateCount;
	
	public String getDateCount() {
		return dateCount;
	}


	public void setDateCount(String dateCount) {
		this.dateCount = dateCount;
	}
	
	
	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public Admin() {
	}
	
	
	public Admin(String adminId, String adminPwd) {
		this.adminId = adminId;
		this.adminPwd = adminPwd;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}


	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminPwd=" + adminPwd + ", count=" + count + ", dateCount=" 
	+ dateCount;
				
	}


	
}
