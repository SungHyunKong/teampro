package com.ts.model;

import java.io.InputStream;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	//sql 세션 팩토리 변수 생성
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			String resource = "com/ts/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		
	public List<MemberVO> memberList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<MemberVO> list = session.selectList("memberList");
		session.close();
		return list;
	}

	public int memberInsert(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("memberInsert", vo);
		// 데이터베이스에 바로 해당?
		session.commit();
		session.close();
		return cnt;
	}

	public int memberDelete(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.delete("memberDelete", num);
		session.commit();
		session.close();
		return cnt;
	}

	public MemberVO memberContent(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO vo = session.selectOne("memberContent", num);
		session.close();
		return vo;
	}

	public int memberUpdate(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.update("memberUpdate", vo);
		session.commit();
		session.close();
		return cnt;

	}

}