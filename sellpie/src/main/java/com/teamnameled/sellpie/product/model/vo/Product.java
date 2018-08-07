package com.teamnameled.sellpie.product.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Product {
	/*
		PNO	NUMBER
		SNO	NUMBER
		PNAME	VARCHAR2(100 BYTE)
		SELTAG	VARCHAR2(100 BYTE)
		rUrl	VARCHAR2(4000 BYTE)
		PQUANTITY	NUMBER
		ISCRAFT	CHAR(1 BYTE)
		PRICE	NUMBER
		PDETAIL	VARCHAR2(4000 BYTE)
		DELFLAG	CHAR(1 BYTE)
	 */
	private int pNo;
	private int sNo;
	private String pName;
	private String selTag;
	private String rUrl;
	private int pQuantity;
	private char isCraft;
	private int price;
	private String pDetail;
	private char delFlag;
	
	public Product() {
		
	}

	public Product(int pNo, int sNo, String pName, String selTag, String rUrl, int pQuantity, char isCraft,
			int price, String pDetail, char delFlag) {
		super();
		this.pNo = pNo;
		this.sNo = sNo;
		this.pName = pName;
		this.selTag = selTag;
		this.rUrl = rUrl;
		this.pQuantity = pQuantity;
		this.isCraft = isCraft;
		this.price = price;
		this.pDetail = pDetail;
		this.delFlag = delFlag;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getsNo() {
		return sNo;
	}

	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getSelTag() {
		return selTag;
	}

	public void setSelTag(String selTag) {
		this.selTag = selTag;
	}

	public String getrUrl() {
		return rUrl;
	}

	public void setrUrl(String rUrl) {
		this.rUrl = rUrl;
	}

	public int getpQuantity() {
		return pQuantity;
	}

	public void setpQuantity(int pQuantity) {
		this.pQuantity = pQuantity;
	}

	public char getIsCraft() {
		return isCraft;
	}

	public void setIsCraft(char isCraft) {
		this.isCraft = isCraft;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getpDetail() {
		return pDetail;
	}

	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}

	public char getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(char delFlag) {
		this.delFlag = delFlag;
	}

	@Override
	public String toString() {
		return "Product [pNo=" + pNo + ", sNo=" + sNo + ", pName=" + pName + ", selTag=" + selTag + ", rUrl="
				+ rUrl + ", pQuantity=" + pQuantity + ", isCraft=" + isCraft + ", price=" + price + ", pDetail="
				+ pDetail + ", delFlag=" + delFlag + "]";
	}
	
	
}
