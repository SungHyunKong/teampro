package com.ts.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardMemberDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	public Connection getConn() {
		String url = "jdbc:mysql://localhost:3306/au?characterEncoding=utf-8&serverTimeZone=UTC";
		String user = "root";
		String password = "admin1234";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("연결 실패");
		}
		return conn;
	}

	public boolean joinMember(BoardMemberDTO dto) {
		conn=getConn();
		String sql="insert into member values (?,?,?,?,?,?)";
		int succ=0;
		
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getMember_id());
			ps.setString(2, dto.getMember_pw());
			ps.setString(3, dto.getMember_name());
			ps.setString(4, dto.getMember_birth());
			ps.setString(5, dto.getMember_gender());
			ps.setString(6, dto.getMember_email());
			succ=ps.executeUpdate();
			
			if(succ!=0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("joinMember() Exception");
		} finally {
		    dbClose();
		}
		return false;
	}
	
	public int isMember(BoardMemberDTO dto) {
		conn=getConn();
		String sql="select member_pw from member where member_id=?";
		int result=-1;
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getMember_id());
			rs=ps.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("member_pw").equals(dto.getMember_pw())) {
					result=1;
				} else {
					result=0;
				}
			} else {
				result=-1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("isMember() Exception");
		} finally {
		    dbClose();
		}
		return result;
	}

	public ArrayList<BoardMemberDTO> getAllMember() {
		conn=getConn();
		String sql="select * from member";
		ArrayList<BoardMemberDTO> list= new ArrayList<BoardMemberDTO>();
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				BoardMemberDTO dto= new BoardMemberDTO();
				dto.setMember_id(rs.getString("member_id"));
				dto.setMember_pw(rs.getString("member_pw"));
				dto.setMember_name(rs.getString("member_name"));
				dto.setMember_birth(rs.getString("member_birth"));
				dto.setMember_gender(rs.getString("member_gender"));
				dto.setMember_email(rs.getString("member_email"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getAllMember() Exception");
		} finally {
		    dbClose();
		}
		return list;
	}
	
	public void deleteMember(String member_id) {
		conn=getConn();
		String sql="delete from member where member_id=?";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, member_id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("deleteMember() Exception");
		} finally {
			dbClose();
		}
	}
	
	public BoardMemberDTO getDetailMember(String member_id) {
		conn=getConn();
		String sql="select * from member where member_id=?";
		BoardMemberDTO dto=null;
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, member_id);
			rs=ps.executeQuery();
			if(rs.next()) {
				dto=new BoardMemberDTO();
				dto.setMember_id(rs.getString("member_id"));
				dto.setMember_pw(rs.getString("member_pw"));
				dto.setMember_name(rs.getString("member_name"));
				dto.setMember_birth(rs.getString("member_birth"));
				dto.setMember_gender(rs.getString("member_gender"));
				dto.setMember_email(rs.getString("member_email"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getDetailMember() Exception");
		} finally {
			dbClose();
		}
		
		return dto;
	}
	
	public String getMember_pw(String id) {
		conn=getConn();
		String sql = "SELECT member_pw FROM member WHERE member_id = ?";
		String member_pw=null;
		try {
			//System.out.println(id);
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			
			if(rs.next()) {
				
				member_pw=rs.getString("member_pw");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getMember_pw() Exception");
		} finally {
			dbClose();
		}
		
		return member_pw;
	}
	
	public int updateMember(BoardMemberDTO dto) {
		conn=getConn();
		String sql="update member set member_pw=?, member_name=?," +
		" member_birth=?, member_gender=?, member_email=? where member_id=?";
		int succ=0;
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, dto.getMember_pw());
			ps.setString(2, dto.getMember_name());
			ps.setString(3, dto.getMember_birth());
			ps.setString(4, dto.getMember_gender());
			ps.setString(5, dto.getMember_email());
			ps.setString(6, dto.getMember_id());
			succ=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("updateMember() Exception");
		} finally {
			dbClose();
		}
		
		return succ;
	}
	
	public void dbClose() {
		try {
			if(rs!=null)
				rs.close();
			if(ps!=null)
				ps.close();
			if(conn!=null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("dbClose() Exception");
		}
	}
}
