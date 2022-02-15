package com.ts.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class QaBoardDAO {

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

	public int boardInsert(QaBoardDTO dto) {
		conn=getConn();
		String sql="";
		int b_num=0;
	    int succ=0;
	    try {
			sql="select max(qa_num) from qa";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			
			if(rs.next()) {
				b_num=rs.getInt(1);
				b_num+=1;
			} else {
				b_num=1;
			}
			
			sql="insert into qa values(?,?,?,?,?,?,?,?,?,now())";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, b_num);
			ps.setString(2, dto.getBoard_id());
			ps.setString(3, dto.getBoard_subject());
			ps.setString(4, dto.getBoard_content());
			ps.setString(5, dto.getBoard_file());
			ps.setInt(6, b_num);
			ps.setInt(7, 0);
			ps.setInt(8, 0);
			ps.setInt(9, 0);
			succ=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("boardInsert() Exception");
		} finally {
			dbClose();
		}
		
		return succ;
	}
	
	public int getListCount() {
		conn=getConn();
		String sql="select count(*) from qa";
		int listCount=0;
		try {
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) {
				listCount=rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getListCount() Exception");
		} finally {
			dbClose();
		}
		return listCount;
	}

	public ArrayList<QaBoardDTO> getBoardList(int page, int limit) {
		conn=getConn();
		String sql = "select * from qa order by qa_re_ref desc,"
				+"qa_re_seq asc limit ?, 10";
		int startRow=(page-1)*10;
		ArrayList<QaBoardDTO> list= new ArrayList<QaBoardDTO>();
		try {
			ps=conn.prepareStatement(sql);
			ps.setInt(1, startRow);
			rs=ps.executeQuery();
			
			while(rs.next()) {
				QaBoardDTO dto = new QaBoardDTO();
				dto.setBoard_num(rs.getInt("qa_num"));
				dto.setBoard_id(rs.getString("qa_id"));
				dto.setBoard_subject(rs.getString("qa_subject"));
				dto.setBoard_content(rs.getString("qa_content"));
				dto.setBoard_file(rs.getString("qa_file"));
				dto.setBoard_re_ref(rs.getInt("qa_re_ref"));
				dto.setBoard_re_lev(rs.getInt("qa_re_lev"));
				dto.setBoard_re_seq(rs.getInt("qa_re_seq"));
				dto.setBoard_readcount(rs.getInt("qa_readcount"));
				dto.setBoard_date(rs.getString("qa_date"));
				list.add(dto);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getBoardList() Exception");
		} finally {
			dbClose();
		}
		
		return list;
	}
	
	public QaBoardDTO getDetail(int board_num) {
		conn = getConn();
		String sql = "SELECT * FROM qa WHERE qa_num = ?";
		QaBoardDTO dto = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, board_num);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				dto = new QaBoardDTO();
				dto.setBoard_num(rs.getInt("qa_num"));
				dto.setBoard_id(rs.getString("qa_id"));
				dto.setBoard_subject(rs.getString("qa_subject"));
				dto.setBoard_content(rs.getString("qa_content"));
				dto.setBoard_file(rs.getString("qa_file"));
				dto.setBoard_re_ref(rs.getInt("qa_re_ref"));
				dto.setBoard_re_lev(rs.getInt("qa_re_lev"));
				dto.setBoard_re_seq(rs.getInt("qa_re_seq"));
				dto.setBoard_readcount(rs.getInt("qa_readcount"));
				dto.setBoard_date(rs.getString("qa_date"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getDetail() Exception!!!");
		} finally {
			dbClose();
		}
		return dto;
	}
	
	public void readCount(int board_num) {
		conn =getConn();
		String sql = "UPDATE qa SET qa_readcount = ";
		sql += "qa_readcount + 1 WHERE qa_num = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, board_num);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("readCount() Excetption!!!");
		} finally {
			dbClose();
		}
	}
	
	public boolean isBoardWriter(int board_num, String id) {
		conn = getConn();
		String sql = "SELECT * FROM qa WHERE qa_num = ?";
		boolean result = false;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, board_num);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				if(id.equals(rs.getString("qa_id"))) {
					result = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("isBoardWriter() Exception!!!");
		} finally {
			dbClose();
		}
		return result;
	}
	
	public int boardDelete(int board_num) {
		conn = getConn();
		String sql = "DELETE FROM qa WHERE qa_num = ?";
		int succ = 0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, board_num);
			succ = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("boardDelete() Exception!!!");
		} finally {
			dbClose();
		}
		return succ;
	}
	
	public int boardUpdate(QaBoardDTO dto) {
		conn = getConn();
		String sql = "UPDATE qa SET qa_subject = ?, ";
		sql += "qa_content = ? WHERE qa_num = ?";
		int succ = 0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, dto.getBoard_subject());
			ps.setString(2, dto.getBoard_content());
			ps.setInt(3, dto.getBoard_num());
			succ = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("boardUpdate() Exception!!!");
		} finally {
			dbClose();
		}
		return succ;
	}
	
	private void dbClose() {
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
