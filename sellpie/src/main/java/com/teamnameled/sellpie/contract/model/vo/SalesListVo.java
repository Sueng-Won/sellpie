package com.teamnameled.sellpie.contract.model.vo;

public class SalesListVo {
	private String email;
	private int cNo;
	private String buyer;
	private String seller;
	private String pName;
	private int quantity;
	private String delivCode;
	private String invNum;
	private String isChecked;
	private String addr;
	private String addrDetail;
	
	public SalesListVo() {
	}

	public SalesListVo(String email, int cNo, String buyer, String seller, String pName, int quantity, String delivCode,
			String invNum, String isChecked, String addr, String addrDetail) {
		super();
		this.email = email;
		this.cNo = cNo;
		this.buyer = buyer;
		this.seller = seller;
		this.pName = pName;
		this.quantity = quantity;
		this.delivCode = delivCode;
		this.invNum = invNum;
		this.isChecked = isChecked;
		this.addr = addr;
		this.addrDetail = addrDetail;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public String getBuyer() {
		return buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
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

	public String getIsChecked() {
		return isChecked;
	}

	public void setIsChecked(String isChecked) {
		this.isChecked = isChecked;
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

	@Override
	public String toString() {
		return "SalesListVo [email=" + email + ", cNo=" + cNo + ", buyer=" + buyer + ", seller=" + seller + ", pName="
				+ pName + ", quantity=" + quantity + ", delivCode=" + delivCode + ", invNum=" + invNum + ", isChecked="
				+ isChecked + ", addr=" + addr + ", addrDetail=" + addrDetail + "]";
	}

}
