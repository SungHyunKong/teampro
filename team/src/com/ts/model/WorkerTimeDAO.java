package com.ts.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class WorkerTimeDAO {
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
	public List<WorkerTimeVO> WorkerTimeList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WorkerTimeVO> list = session.selectList("WorkerTimeList");
		session.close();
		return list;
	}
}
