package svc;

import java.sql.Connection;

import dao.BoardDAO;

import static db.JdbcUtil.*;
import vo.BoardBean;

public class BoardDetailService {

	public BoardBean getArticle(int qa_num) throws Exception{
		
		BoardBean article=null;
		Connection con=getConnection();
		BoardDAO boardDAO=BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int updateCount=boardDAO.updateReadCount(qa_num);
		
		if(updateCount>0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		article=boardDAO.selectArticle(qa_num);
		close(con);
		return article;
	}

}
