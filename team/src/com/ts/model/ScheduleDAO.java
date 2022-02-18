package com.ts.model;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ScheduleDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public List<ScheduleVO> scheduleInfo() {
		SqlSession session = sqlSessionFactory.openSession();
		List<ScheduleVO> list = session.selectList("scheduleInfo");
		
		
		session.close();
		return list;
	}
	public int scheduleInsert(ScheduleVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("scheduleInsert", vo);
		
		session.commit();
		session.close();
		return cnt;
	}
}
