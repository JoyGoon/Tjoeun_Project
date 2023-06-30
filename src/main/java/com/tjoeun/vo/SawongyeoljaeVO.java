package com.tjoeun.vo;

import java.util.Date;

public class SawongyeoljaeVO {

	private int idx;
	private String subject; // 메인글 제목
	private String content; // 메인글 내용
	private Date writeDate;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
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
	
	
	
	@Override
	public String toString() {
		return "SawongyeoljaeVO [idx=" + idx + ", subject=" + subject + ", content=" + content + ", writeDate="
				+ writeDate + "]";
	}
	
	
	
	
	
	
}
