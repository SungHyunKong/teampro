package svc;
import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.BoardDAO;
public class BoardDeleteProService {

	public boolean isArticleWriter(int qa_num, String pass) throws Exception{
		boolean isArticleWriter=false;
		Connection con=getConnection();
		BoardDAO boardDAO=BoardDAO.getInstance();
		boardDAO.setConnection(con);
		isArticleWriter=boardDAO.isArticleBoardWriter(qa_num, pass);
		close(con);
		return isArticleWriter;
	}

	public boolean removeArticle(int qa_num) throws Exception{
		boolean isRemoveSuccess=false;
		Connection con=getConnection();
		BoardDAO boardDAO=BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int deleteCount=boardDAO.deleteArticle(qa_num);
		
		if(deleteCount>0) {
			commit(con);
			isRemoveSuccess=true;
		} else {
			rollback(con);
		}
		close(con);
		return isRemoveSuccess;
	}

}
