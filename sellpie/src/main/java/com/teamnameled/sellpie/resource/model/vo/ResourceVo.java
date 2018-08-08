package com.teamnameled.sellpie.resource.model.vo;

import org.springframework.stereotype.Component;

@Component
public class ResourceVo {
	private int rno;
	private String rsrc;
	
	public ResourceVo(){
		
	}
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getRsrc() {
		return rsrc;
	}
	public void setRsrc(String rsrc) {
		this.rsrc = rsrc;
	}

	@Override
	public String toString() {
		return "ResourceVo [rno=" + rno + ", rsrc=" + rsrc + "]";
	}
	
	
}
