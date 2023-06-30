package com.tjoeun.vo;

public class LoginVO {
	
	private int cnum;
	private String password;
	
	public LoginVO() { };
	
	
	public LoginVO(int cnum, String password) {
		this.cnum = cnum;
		this.password = password;
	}


	public final int getCnum() {
		return cnum;
	}
	public final void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public final String getPassword() {
		return password;
	}
	public final void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "LoginVO [cnum=" + cnum + ", password=" + password + "]";
	}
	
	
}