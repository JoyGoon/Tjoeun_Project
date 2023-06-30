package com.tjoeun.dao;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.vo.SawongyeoljaeVO;

public class SawongyeoljaeDAO {

	private static SawongyeoljaeDAO instance = new SawongyeoljaeDAO();
	private SawongyeoljaeDAO() { }
	public static SawongyeoljaeDAO getInstance() {
		return instance;
	}
	
//	SawongyeoljaeService 클래스에서 호출되는 mapper와 메인글이 저장된 객체를 넘겨받고 sawongyeoljae.xml 파일의
//	insert sql 명령을 실행하는 메소드
	public void insert(SqlSession mapper, SawongyeoljaeVO so) {
		System.out.println("SawongyeoljaeDAO의 insert()");
		mapper.insert("insert", so);
	}
	
}
