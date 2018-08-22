package com.teamnameled.sellpie.seller.model.vo;

public class SalesStatisticsVo {

	private int pNo;
	private String pName;
	private int price;
	private int pQuantity;
	private int salesRate;
	private char iscraft;
	
	public SalesStatisticsVo() {
	}

	public SalesStatisticsVo(int pNo, String pName, int price, int pQuantity, int salesRate, char iscraft) {
		this.pNo = pNo;
		this.pName = pName;
		this.price = price;
		this.pQuantity = pQuantity;
		this.salesRate = salesRate;
		this.iscraft = iscraft;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getpQuantity() {
		return pQuantity;
	}

	public void setpQuantity(int pQuantity) {
		this.pQuantity = pQuantity;
	}

	public int getSalesRate() {
		return salesRate;
	}

	public void setSalesRate(int salesRate) {
		this.salesRate = salesRate;
	}

	public char getIscraft() {
		return iscraft;
	}

	public void setIscraft(char iscraft) {
		this.iscraft = iscraft;
	}

	@Override
	public String toString() {
		return "SalesStatisticsVo [pNo=" + pNo + ", pName=" + pName + ", price=" + price + ", pQuantity=" + pQuantity
				+ ", salesRate=" + salesRate + ", iscraft=" + iscraft + "]";
	}
	
}
