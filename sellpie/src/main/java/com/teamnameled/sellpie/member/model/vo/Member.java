package com.teamnameled.sellpie.member.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Member {
	 private String email;
	 private String pwd;
	 private String name;
	 private String gender;
	 private String phone;
	 private String birth;
	 private String profileImg;
	 
	public Member() {
	}

	public Member(String email, String pwd, String name, String gender, String phone, String birth,
			String profileImg) {
		this.email = email;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.phone = phone;
		this.birth = birth;
		this.profileImg = profileImg;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	@Override
	public String toString() {
		return "Member [email=" + email + ", pwd=" + pwd + ", name=" + name + ", gender=" + gender + ", phone=" + phone
				+ ", birth=" + birth + ", prifile_img=" + profileImg + "]";
	}
	 

}
