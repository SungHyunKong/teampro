package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.BoardDeleteProService;
import vo.ActionForward;

public class BoardDeleteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward=null;
		int qa_num=Integer.parseInt(request.getParameter("qa_num"));
		String nowPage=request.getParameter("page");
		BoardDeleteProService boardDeleteProService=new BoardDeleteProService();
		boolean isArticleWriter=boardDeleteProService.isArticleWriter(qa_num, request.getParameter("qa_pass"));
		if(!isArticleWriter) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('삭제할 권한이 없습니다.');");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		} else {
			boolean isDeleteSuccess=boardDeleteProService.removeArticle(qa_num);
		}
		return null;
	}

}
