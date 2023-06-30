package com.tjoeun.service;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import com.tjoeun.dao.LoginDAO;
import com.tjoeun.mybatis.MySession;
import com.tjoeun.vo.LoginVO;

public class SelectService {
	private static SelectService instance = new SelectService();
	private SelectService() {
		// TODO Auto-generated constructor stub
	}
	public static SelectService getInstance() {
		return instance;
	}
	
	
	public LoginVO selectbyCnum(int cnum) {
		System.out.println("SelectService 클래스의 selectByCnum() 메소드 실행");
		SqlSession mapper = MySession.getSession();
		
		// 정보 1건을 얻어와서 저장한 후 리턴시킬 객체를 선언한다.
		LoginVO vo = null;
		
		vo = LoginDAO.getInstance().selectbyCnum(mapper, cnum);
		
		
//		얻어온 글 1건을 리턴시킨다.
		mapper.close();
		return vo;
		
	}
}
