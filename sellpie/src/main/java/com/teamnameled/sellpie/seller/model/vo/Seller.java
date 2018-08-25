package com.teamnameled.sellpie.seller.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Seller {
	/*
		sNo	NUMBER
		EMAIL	VARCHAR2(100 BYTE)
		ACNUM	VARCHAR2(100 BYTE)
		BANK	VARCHAR2(30 BYTE)
		ZIPCODE	VARCHAR2(5 BYTE)
		ADDR	VARCHAR2(100 BYTE)
		ADDRDETAIL	VARCHAR2(100 BYTE)
		PCATEGORY	VARCHAR2(100 BYTE)
		REASON	VARCHAR2(4000 BYTE)
	*/
	private int sNo;
	private String email;
	private String acNum;
	private String bank;
	private String zipcode;
	private String addr;
	private String addrDetail;
	private String pCategory;
	private String reason;
	private char confirm;

	public Seller() {
	}

	public Seller(int sNo, String email, String acNum, String bank, String zipcode, String addr, String addrDetail,
			String pCategory, String reason, char confirm) {
		this.sNo = sNo;
		this.email = email;
		this.acNum = acNum;
		this.bank = bank;
		this.zipcode = zipcode;
		this.addr = addr;
		this.addrDetail = addrDetail;
		this.pCategory = pCategory;
		this.reason = reason;
		this.confirm = confirm;
	}

	public int getsNo() {
		return sNo;
	}

	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAcNum() {
		return acNum;
	}

	public void setAcNum(String acNum) {
		this.acNum = acNum;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddrDetail() {
		return addrDetail;
	}

	public void setAddrDetail(String addrDetail) {
		this.addrDetail = addrDetail;
	}

	public String getpCategory() {
		return pCategory;
	}

	public void setpCategory(String pCategory) {
		this.pCategory = pCategory;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public char getConfirm() {
		return confirm;
	}

	public void setConfirm(char confirm) {
		this.confirm = confirm;
	}

	@Override
	public String toString() {
		return "Seller [sNo=" + sNo + ", email=" + email + ", acNum=" + acNum + ", bank=" + bank + ", zipcode="
				+ zipcode + ", addr=" + addr + ", addrDetail=" + addrDetail + ", pCategory=" + pCategory + ", reason="
				+ reason + ", confirm=" + confirm + "]";
	}
	
}
