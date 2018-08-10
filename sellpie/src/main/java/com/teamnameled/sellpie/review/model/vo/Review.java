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
	
	public Review() {

	}

	public Review(int rNo, int pNo, int reviewStar) {
		this.rNo = rNo;
		this.pNo = pNo;
		this.reviewStar = reviewStar;
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

	@Override
	public String toString() {
		return "Review [rNo=" + rNo + ", pNo=" + pNo + ", reviewStar=" + reviewStar + "]";
	}
	
}
