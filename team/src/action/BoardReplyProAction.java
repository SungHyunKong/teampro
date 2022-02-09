package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.BoardReplyProService;
import vo.ActionForward;
import vo.BoardBean;

public class BoardReplyProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=null;
		String nowPage=request.getParameter("page");
		BoardBean article=new BoardBean();
		article.setQa_num(Integer.parseInt(request.getParameter("qa_num")));
		article.setQa_name(request.getParameter("qa_name"));
		article.setQa_pass(request.getParameter("qa_pass"));
		article.setQa_subject(request.getParameter("qa_subject"));
		article.setQa_content(request.getParameter("qa_content"));
		article.setQa_ref(Integer.parseInt(request.getParameter("qa_ref")));
		article.setQa_lev(Integer.parseInt(request.getParameter("qa_lev")));
		article.setQa_step(Integer.parseInt(request.getParameter("qa_step")));
		BoardReplyProService boardReplyProService=new BoardReplyProService();
		boolean isReplySuccess=boardReplyProService.replyArticle(article);
		
		if(isReplySuccess) {
			forward=new ActionForward();
			forward.setRedirect(true);
			forward.setPath("boardList.bo?page="+nowPage);
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('답장실패');");
			out.println("history.back()");
			out.println("</script>");
		}
		return forward;
	}

}
