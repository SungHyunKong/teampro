package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.BoardDetailService;
import vo.ActionForward;
import vo.BoardBean;

public class BoardModifyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=new ActionForward();
		int qa_num=Integer.parseInt(request.getParameter("qa_num"));
		BoardDetailService boardDetailService=new BoardDetailService();
		BoardBean article=boardDetailService.getArticle(qa_num);
		request.setAttribute("article", article);
		forward.setPath("/board/qna_board_modify.jsp");
		
		return forward;
	}

}
