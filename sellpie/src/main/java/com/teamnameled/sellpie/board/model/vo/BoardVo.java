package com.teamnameled.sellpie.board.model.vo;

import java.util.List;

import org.springframework.stereotype.Component;

import com.teamnameled.sellpie.resource.model.vo.ResourceVo;


@Component
public class BoardVo {
	private int bno;
	private String email;
	private String bcontent;
	private int gcount;
	private String rurl;
	private char isad;
	private char delflag;
	private char likeflag = 'F';
	private List<ResourceVo> resource;
	
	public BoardVo() {
		super();
	}
	
	

	public int getBno() {
		return bno;
	}



	public void setBno(int bno) {
		this.bno = bno;
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

	public char getLikeflag() {
		return likeflag;
	}

	public void setLikeflag(char likeflag) {
		this.likeflag = likeflag;
	}

	public List<ResourceVo> getResource() {
		return resource;
	}

	public void setResource(List<ResourceVo> resource) {
		this.resource = resource;
	}



	@Override
	public String toString() {
		return "BoardVo [bno=" + bno + ", email=" + email + ", bcontent=" + bcontent + ", gcount=" + gcount + ", rurl="
				+ rurl + ", isad=" + isad + ", delflag=" + delflag + ", likeflag=" + likeflag + ", resource=" + resource
				+ "]";
	}

	
	

	
	
	
	
	

}
