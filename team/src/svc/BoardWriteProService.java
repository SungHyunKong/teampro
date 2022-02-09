package svc;

import java.sql.Connection;

import vo.BoardBean;
import static db.JdbcUtil.*;

public class BoardWriteProService {

	public boolean registArticle(BoardBean boardBean) throws Exception {
		
		boolean isWriteSuccess=false;
		Connection con=getConnection();
		return false;
	}

}
