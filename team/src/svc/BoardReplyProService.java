package svc;

import java.sql.Connection;

import dao.BoardDAO;

import static db.JdbcUtil.*;
import vo.BoardBean;

public class BoardReplyProService {

	public boolean replyArticle(BoardBean article) throws Exception{
		boolean isReplySuccess=false;
		int insertCount=0;
		Connection con=getConnection();
		BoardDAO boardDAO=BoardDAO.getInstance();
		boardDAO.setConnection(con);
		insertCount=boardDAO.insertReplyArticle(article);
		
		if(insertCount>0) {
			commit(con);
			isReplySuccess=true;
		} else {
			rollback(con);
		}
		close(con);
		
		return isReplySuccess;
	}

	

}
