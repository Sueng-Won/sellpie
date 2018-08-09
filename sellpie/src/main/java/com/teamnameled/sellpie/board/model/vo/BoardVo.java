package com.teamnameled.sellpie.board.model.vo;

import org.springframework.stereotype.Component;

@Component
public class BoardVo {
	private String email;
	private String bcontent;
	private int gcount;
	private String rurl;
	private char isad;
	private char delflag;
	
	public BoardVo() {
		super();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public int getGcount() {
		return gcount;
	}

	public void setGcount(int gcount) {
		this.gcount = gcount;
	}

	public String getRurl() {
		return rurl;
	}

	public void setRurl(String rurl) {
		this.rurl = rurl;
	}

	public char getIsad() {
		return isad;
	}

	public void setIsad(char isad) {
		this.isad = isad;
	}

	public char getDelflag() {
		return delflag;
	}

	public void setDelflag(char delflag) {
		this.delflag = delflag;
	}

	@Override
	public String toString() {
		return "BoardVo [email=" + email + ", bcontent=" + bcontent + ", gcount=" + gcount + ", rurl=" + rurl
				+ ", isad=" + isad + ", delflag=" + delflag + "]";
	}
	
}
