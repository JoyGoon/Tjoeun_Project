package com.tjoeun.dao;

import org.apache.catalina.mapper.Mapper;
import org.apache.ibatis.session.SqlSession;

import com.tjoeun.vo.LoginVO;

public class LoginDAO {

	private static LoginDAO instance = new LoginDAO();
	private LoginDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static LoginDAO getInstance() {
		return instance;
	}
	
	public LoginVO selectbyCnum(SqlSession mapper,int cnum) {
		System.out.println("loginDAO의 selectbyCnum");
		return (LoginVO) mapper.selectOne("selectbyCnum", cnum);
	}
	
	
}
