package com.ts.model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardMemberDAO {

	private static SqlSessionFactory sqlsessionFactory;
	
	static {
		try {
			String resource="com/ts/mybatis/config.xml";
			InputStream inputStream= Resources.getResourceAsStream(resource);
			sqlsessionFactory= new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean joinMember(BoardMemberDTO dto) {
		SqlSession session= sqlsessionFactory.openSession();
		int cnt=session.insert("joinMember", dto);
		session.commit();
		session.close();
		
		if(cnt!=0) {
			return true;
		} else {
			return false;
		}
	}

	public int isMember(BoardMemberDTO dto) {
		SqlSession session= sqlsessionFactory.openSession();
		int cnt=-1;
		
		String pw=(String)session.selectOne("isMember", dto.getMember_id());
		//System.out.println(pw);
		session.commit();
		session.close();
		
		if(pw==null) {
			cnt=-1;
			
		} else {
			if(pw.equals(dto.getMember_pw())) {
				cnt=1;
			} else {
				cnt=0;
			}
		}
		

		return cnt;
	}
	
	public ArrayList<BoardMemberDTO> getAllMember(){
		SqlSession session= sqlsessionFactory.openSession();
		List<BoardMemberDTO >list=session.selectList("getAllMember");
		session.commit();
		session.close();
		
		return (ArrayList<BoardMemberDTO>) list;
	}
	
	public void deleteMember(String member_id) {
		SqlSession session= sqlsessionFactory.openSession();
		session.delete("deleteMember", member_id);
		session.commit();
		session.close();
	}
	
	public BoardMemberDTO getDetailMember(String member_id) {
		BoardMemberDTO dto=null;
		SqlSession session= sqlsessionFactory.openSession();
		dto=session.selectOne("getDetailMember", member_id);
		session.commit();
		session.close();
		return dto;
	}
	
	public String getMember_pw(String member_id) {
		SqlSession session= sqlsessionFactory.openSession();
		String member_pw=session.selectOne("getMember_pw", member_id);
		session.commit();
		session.close();
		return member_pw;
	}
	
	public int updateMember(BoardMemberDTO dto) {
		SqlSession session= sqlsessionFactory.openSession();
		int succ=session.update("updateMember", dto);
		session.commit();
		session.close();
		return succ;
	}
	
	public int idCheck(BoardMemberDTO dto) {
		SqlSession session= sqlsessionFactory.openSession();
		int cnt=-1;
		//System.out.println(dto.getMember_id());
		String id=(String)session.selectOne("idCheck", dto.getMember_id());
		session.commit();
		session.close();
		
		if(id==null) {
			cnt=0;
		} else {
			cnt=1;
		}
		
		
		return cnt;
	}
	
}
