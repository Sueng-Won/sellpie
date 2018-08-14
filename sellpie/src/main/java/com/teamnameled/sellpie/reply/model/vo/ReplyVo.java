package com.teamnameled.sellpie.reply.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ReplyVo {
	private int rno;
	private int bno;
	private String writer; //email임
	private String content;
	private Date writeDate;
	private char delFlag;
	private String name;
	private String profileImg;
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public char getDelFlag() {
		return delFlag;
	}
	public void setDelFlag(char delFlag) {
		this.delFlag = delFlag;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	
	@Override
	public String toString() {
		return "ReplyVo [rno=" + rno + ", bno=" + bno + ", writer=" + writer + ", content=" + content + ", writeDate="
				+ writeDate + ", delFlag=" + delFlag + ", name=" + name + ", profileImg=" + profileImg + "]";
	}
	

	
}
