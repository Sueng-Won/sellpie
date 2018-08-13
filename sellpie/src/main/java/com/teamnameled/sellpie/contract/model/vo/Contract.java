package com.teamnameled.sellpie.contract.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Contract {
	/*
	CNO	NUMBER
	EMAIL	VARCHAR2(30 BYTE)
	SNO	NUMBER
	PNO	NUMBER
	QUANTITY	NUMBER
	DELIVCODE	VARCHAR2(5 BYTE)
	INVNUM	VARCHAR2(30 BYTE)
	 */
	private int cNo;
	private String email;
	private int sNo;
	private int pNo;
	private int quantity;
	private String delivCode;
	private String invNum;
	
	public Contract() {
		
	}
	
	public Contract(int cNo, String email, int sNo, int pNo, int quantity, String delivCode, String invNum) {
		this.cNo = cNo;
		this.email = email;
		this.sNo = sNo;
		this.pNo = pNo;
		this.quantity = quantity;
		this.delivCode = delivCode;
		this.invNum = invNum;
	}

	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDelivCode() {
		return delivCode;
	}
	public void setDelivCode(String delivCode) {
		this.delivCode = delivCode;
	}
	public String getInvNum() {
		return invNum;
	}
	public void setInvNum(String invNum) {
		this.invNum = invNum;
	}
	
	@Override
	public String toString() {
		return "Contract [cNo=" + cNo + ", email=" + email + ", sNo=" + sNo + ", pNo=" + pNo + ", quantity=" + quantity
				+ ", delivCode=" + delivCode + ", invNum=" + invNum + "]";
	}
	
	
}
