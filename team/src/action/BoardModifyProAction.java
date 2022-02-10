package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.BoardModifyProService;
import vo.ActionForward;
import vo.BoardBean;

public class BoardModifyProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=null;
		boolean isModifySuccess=false;
		int qa_num=Integer.parseInt(request.getParameter("qa_num"));
		BoardBean article=new BoardBean();
		BoardModifyProService boardModifyProService=new BoardModifyProService();
		boolean isRightUser=boardModifyProService.isArticleWriter(qa_num, request.getParameter("qa_pass"));
		
		if(!isRightUser) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('수정할 권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			
		} else {
			article.setQa_num(qa_num);
			article.setQa_subject(request.getParameter("qa_subject"));
			article.setQa_content(request.getParameter("qa_content"));
			isModifySuccess=boardModifyProService.modifyArticle(article);
			
			if(!isModifySuccess) {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				out.println("<script>");
				out.println("alert('수정실패');");
				out.println("history.back()");
				out.println("</script>");
			} else {
				forward=new ActionForward();
				forward.setRedirect(true);
				forward.setPath("boardDetail.bo?qa_num="+article.getQa_num());
				
			}
			
		}
		
		return forward;
	}

}
