package com.ts.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class WorkerDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "com/ts/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public List<WorkerVO> WorkerList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WorkerVO> list = session.selectList("WorkerList");
		session.close();
		return list;
	}
	public int workerDelete() {
		
	SqlSession session = sqlSessionFactory.openSession();
	int cnt = session.delete("WorkerDelete");
	session.commit();
	session.close();
	
	return cnt;
	}
	public int workerInsert(WorkerVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("WorkerInsert", vo);
		session.commit();
		session.close();
		return cnt;
	}
	
	
}
