package com.tjoeun.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.tjoeun.vo.CeoVO;

public class CeoDAO {

	private static CeoDAO instance = new CeoDAO();
	private CeoDAO() { }
	public static CeoDAO getInstance() {
		return instance;
	}
	
//	FreeboardService 클래스에서 호출되는 mapper와 메인글이 저장된 객체를 넘겨받고 freeboard.xml 파일의
//	insert sql 명령을 실행하는 메소드
	public void insert(SqlSession mapper, CeoVO vo) {
		System.out.println("FreeboardDAO의 insert()");
		mapper.insert("insert", vo);
	}
	
//	FreeboardService 클래스에서 호출되는 mapper를 넘겨받고 메인글 전체 개수를 얻어오는 freeboard.xml 파일의
//	select sql 명령을 실행하는 메소드
	public int selectCount(SqlSession mapper) {
		System.out.println("FreeboardDAO의 selectCount()");
		return (int) mapper.selectOne("selectCount");
	}
	
//	FreeboardService 클래스에서 호출되는 mapper와 1페이지 분량의 시작 인덱스, 끝 인덱스가 저장된 HashMap 객체를
//	넘겨받고 1페이지 분량의 메인글 목록을 얻어오는 freeboard.xml 파일의 select sql 명령을 실행하는 메소드
	public ArrayList<CeoVO> selectList(SqlSession mapper, HashMap<String, Integer> hmap) {
		System.out.println("FreeboardDAO의 selectList()");
		return (ArrayList<CeoVO>) mapper.selectList("selectList", hmap);
	}
	
}
