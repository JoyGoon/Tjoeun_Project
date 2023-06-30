package com.tjoeun.service;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.dao.SawongyeoljaeDAO;
import com.tjoeun.mybatis.MySession;
import com.tjoeun.vo.SawongyeoljaeVO;

public class SawongyeoljaeService {
	
		private static SawongyeoljaeService instance = new SawongyeoljaeService();
		private SawongyeoljaeService() { }
		public static SawongyeoljaeService getInstance() {
			return instance;
	}
		
		
//		sawongyeoljaeOK.jsp에서 호출되는 메인글이 저장된 객체를 넘겨받고 mapper를 얻어온 후 메인글을 저장하는
//		sawongyeoljaeDAO 클래스의 insert sql 명령을 실행하는 메소드 호출하는 메소드
		public void insert(SawongyeoljaeVO so) {
			System.out.println("SawongyeoljaeService의 insert()");
			SqlSession mapper = MySession.getSession();
			//System.out.println(mapper);     여기까지 됨
			SawongyeoljaeDAO.getInstance().insert(mapper, so);
			mapper.commit();
			mapper.close();
		}
		
		
		
		}	
		
