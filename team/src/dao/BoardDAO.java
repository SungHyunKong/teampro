package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import vo.BoardBean;

public class BoardDAO {

	DataSource ds;
	Connection con;
	private static BoardDAO boardDAO;
	
	public static BoardDAO getInstance() {
		if(boardDAO==null) {
			boardDAO=new BoardDAO();
		}
		return boardDAO;
	}

	public void setConnection(Connection con) {
		this.con=con;
		
	}

	//글 등록
	public int insertArticle(BoardBean article) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int num=0;
		String sql="";
		int insertCount=0;
		
		try {
			pstmt=con.prepareStatement("select max(qa_num) from qa");
			rs=pstmt.executeQuery();
			
			if(rs.next())
				num=rs.getInt(1)+1;
			else {
				num=1;
				sql="insert into qa (qa_num, qa_name, qa_pass, qa_subject,";
				sql+="qa_content, qa_file, qa_ref,"+"qa_lev, qa_step, qa_section,"+
				"qa_date values(?,?,?,?,?,?,?,?,?,?,now())";
				
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.setString(2, article.getQa_name());
				pstmt.setString(3, article.getQa_pass());
				pstmt.setString(4, article.getQa_subject());
				pstmt.setString(5, article.getQa_content());
				pstmt.setString(6, article.getQa_file());
				pstmt.setInt(7, num);
				pstmt.setInt(8, 0);
				pstmt.setInt(9, 0);
				pstmt.setInt(10, 0);
				
				insertCount=pstmt.executeUpdate();
				
			}
		} catch (Exception e) {
			System.out.println("boardInsert 에러 : "+e);
		} finally {
			close(rs);
			close(pstmt);
		}
		return insertCount;
	}

	public int selectListCount() {
		int listCount=0;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			pstmt=con.prepareStatement("select count(*) from qa");
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				listCount=rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("getListCount 에러"+e);
		} finally {
			close(rs);
			close(pstmt);
		}
		return 0;
	}

	//글 목록 보기
	public ArrayList<BoardBean> selectArticleList(int page, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String qa_list_sql="select * from qa order by qa_ref desc, qa_step asc limit ?,10";
		ArrayList<BoardBean> articleList=new ArrayList<BoardBean>();
		BoardBean qa=null;
		int startrow=(page-1)*10;
		
		try {
			pstmt=con.prepareStatement(qa_list_sql);
			pstmt.setInt(1, startrow);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				qa=new BoardBean();
				qa.setQa_num(rs.getInt("qa_num"));
				qa.setQa_name(rs.getString("qa_name"));
				qa.setQa_subject(rs.getString("qa_subject"));
				qa.setQa_content(rs.getString("qa_content"));
				qa.setQa_file(rs.getString("qa_file"));
				qa.setQa_ref(rs.getInt("qa_ref"));
				qa.setQa_lev(rs.getInt("qa_lev"));
				qa.setQa_step(rs.getInt("qa_step"));
				qa.setQa_section(rs.getInt("qa_section"));
				qa.setQa_date(rs.getDate("qa_date"));
				articleList.add(qa);
			}
		} catch (Exception e) {
			System.out.println("getBoardList 에러: "+e);
		} finally {
			close(rs);
			close(rs);
		}
		return articleList;
	}

	public int updateReadCount(int qa_num) {
		// TODO Auto-generated method stub
		return 0;
	}

	//글 내용 보기
	public BoardBean selectArticle(int qa_num) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		BoardBean qa=null;
		
		try {
			pstmt=con.prepareStatement("select * from qa where qa_num=?");
			pstmt.setInt(1, qa_num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				qa=new BoardBean();
				qa.setQa_num(rs.getInt("qa_num"));
				qa.setQa_name(rs.getString("qa_name"));
				qa.setQa_subject(rs.getString("qa_subject"));
				qa.setQa_content(rs.getString("qa_content"));
				qa.setQa_file(rs.getString("qa_file"));
				qa.setQa_ref(rs.getInt("qa_ref"));
				qa.setQa_lev(rs.getInt("qa_lev"));
				qa.setQa_step(rs.getInt("qa_step"));
				qa.setQa_section(rs.getInt("qa_section"));
				qa.setQa_date(rs.getDate("qa_date"));
				
			}
		} catch (Exception e) {
			System.out.println("getDetail 에러 : "+e);
		} finally {
			close(rs);
			close(pstmt);
		}
		return qa;
	}

	public boolean isArticleBoardWriter(int qa_num, String pass) {
		// TODO Auto-generated method stub
		return false;
	}

	public int updateArticle(BoardBean article) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteArticle(int qa_num) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertReplyArticle(BoardBean article) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String qa_max_sql="select max(qa_num) from qa";
		String sql="";
		int num=0;
		int insertCount=0;
		int ref=article.getQa_ref();
		int lev=article.getQa_lev();
		int step=article.getQa_step();
		
		try {
			pstmt=con.prepareStatement(qa_max_sql);
			rs=pstmt.executeQuery();
			if(rs.next())
				num=rs.getInt(1)+1;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

}
