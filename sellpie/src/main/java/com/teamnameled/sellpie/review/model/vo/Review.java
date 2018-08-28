package com.teamnameled.sellpie.review.model.vo;

import org.springframework.stereotype.Component;

	/*
 	RNO	NUMBER
	PNO	NUMBER
	REVIEWSTAR	NUMBER
 */

@Component
public class Review {
	private int rNo;
	private int pNo;
	private int reviewStar;
	private int cNo;
	
	public Review() {

	}

	public Review(int rNo, int pNo, int reviewStar, int cNo) {
		super();
		this.rNo = rNo;
		this.pNo = pNo;
		this.reviewStar = reviewStar;
		this.cNo = cNo;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getReviewStar() {
		return reviewStar;
	}

	public void setReviewStar(int reviewStar) {
		this.reviewStar = reviewStar;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	@Override
	public String toString() {
		return "Review [rNo=" + rNo + ", pNo=" + pNo + ", reviewStar=" + reviewStar + ", cNo=" + cNo + "]";
	}

}
