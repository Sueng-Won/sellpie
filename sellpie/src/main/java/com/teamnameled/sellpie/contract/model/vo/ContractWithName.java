package com.teamnameled.sellpie.contract.model.vo;

public class ContractWithName {
	private int cNo;
	private String name;
	private String sName;
	private String pName;
	private int quantity;
	private String delivCode;
	private String invNum;
	
	public ContractWithName() {
		
	}

	public ContractWithName(int cNo, String name, String sName, String pName, int quantity, String delivCode,
			String invNum) {
		super();
		this.cNo = cNo;
		this.name = name;
		this.sName = sName;
		this.pName = pName;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
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
		return "ContractWithName [cNo=" + cNo + ", name=" + name + ", sName=" + sName + ", pName=" + pName
				+ ", quantity=" + quantity + ", delivCode=" + delivCode + ", invNum=" + invNum + "]";
	}
}
