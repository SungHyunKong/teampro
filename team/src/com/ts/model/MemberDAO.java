package com.ts.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {

	private static SqlSessionFactory sqlSessionFactory;
	
	static {
	try {
		String resource="mybatis/config.xml";
		InputStream inputStream=Resources.getResourceAsStream(resource);
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	} catch(Exception e) {
		e.printStackTrace();
	}
	}

	public MemberDAO() {}
	
	public int memberInsert(MemberVO vo) {
		SqlSession session=sqlSessionFactory.openSession();
		int cnt=session.insert("memberInsert", vo);
		session.commit();
		session.close();
		
		return cnt;
	}
	
}
