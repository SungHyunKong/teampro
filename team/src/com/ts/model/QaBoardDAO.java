package com.ts.model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class QaBoardDAO {

	private static SqlSessionFactory sqlsessionFactory;

	static {
		try {
			String resource = "com/ts/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlsessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int boardInsert(QaBoardDTO dto) {
		SqlSession session= sqlsessionFactory.openSession();
		int cnt=session.insert("boardInsert", dto);
		session.commit();
		session.close();
		return cnt;
	}

	public int getListCount() {
		SqlSession session= sqlsessionFactory.openSession();
		int cnt=session.selectOne("getListCount");
		session.commit();
		session.close();
		return cnt;
	}

	public List<QaBoardDTO> getBoardList(int page, int limit) {
		SqlSession session= sqlsessionFactory.openSession();
     	int startRow = (page-1)*limit;
     	
		List<QaBoardDTO> list= session.selectList("getBoardList",startRow);
		session.commit();
		session.close();
		return list;
	}

	public QaBoardDTO getDetail(int qa_num) {
		SqlSession session= sqlsessionFactory.openSession();
		QaBoardDTO dto= new QaBoardDTO();
		dto=session.selectOne("getDetail", qa_num);
		session.commit();
		session.close();
		return dto;
	}

	public void readCount(int qa_num) {
		SqlSession session= sqlsessionFactory.openSession();
		QaBoardDTO dto= getDetail(qa_num);
		session.update("readCount", dto);
		session.commit();
		session.close();
	}

	public boolean isBoardWriter(int qa_num, String id) {
		SqlSession session= sqlsessionFactory.openSession();
		QaBoardDTO dto= getDetail(qa_num);
		dto=(QaBoardDTO)session.selectOne("isBoardWriter", dto);
		session.commit();
		session.close();
		if(id.equals(dto.getQa_id())) {
			
			return true;
		} else {
			return false;
		}
	}

	public int boardDelete(int qa_num) {
		SqlSession session= sqlsessionFactory.openSession();
		int num=session.delete("boardDelete", qa_num);
		session.commit();
		session.close();
		return num;
	}

	public int boardUpdate(QaBoardDTO dto) {
		SqlSession session= sqlsessionFactory.openSession();
		int num=session.update("boardUpdate", dto);
		session.commit();
		session.close();
		return num;
		
	}
	public int boardReply(QaBoardDTO dto) {
		SqlSession session= sqlsessionFactory.openSession();
		int n=session.update("updateRef", dto);
		int cnt=session.insert("boardReply", dto);
		
		session.commit();
		session.close();
		System.out.println(n);
		System.out.println(dto.getQa_re_lev());
		System.out.println(cnt);
		return cnt;
	}

}
