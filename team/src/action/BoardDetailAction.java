package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.BoardDetailService;
import vo.ActionForward;
import vo.BoardBean;

public class BoardDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int qa_num=Integer.parseInt("qa_num");
		String page=request.getParameter("page");
		BoardDetailService boardDetailService=new BoardDetailService();
		BoardBean article=boardDetailService.getArticle(qa_num);
		ActionForward forward=new ActionForward();
		request.setAttribute("page", page);
		request.setAttribute("article", article);
		forward.setPath("/board/qna_board_view.jsp");
		
		return forward;
	}

}
