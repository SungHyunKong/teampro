package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.frontcontroller.Action;
import com.ts.frontcontroller.ActionForward;
import com.ts.model.BoardMemberDAO;
import com.ts.model.BoardMemberDTO;

public class MemberLoginAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardMemberDTO dto= new BoardMemberDTO();
		dto.setMember_id(request.getParameter("member_id"));
		dto.setMember_pw(request.getParameter("member_pw"));
		//System.out.println(request.getParameter("member_id"));
		BoardMemberDAO dao=new BoardMemberDAO();
		int result=dao.isMember(dto);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out=response.getWriter();
		if(result==0) {
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않습니다!')");
			out.println("location.href='memberLogin.me';");
			out.println("</script>");
			return null;
		} else if (result==-1) {
			out.println("<script>");
			out.println("alert('아이디가 존재하지 않습니다!')");
			out.println("location.href='memberLogin.me';");
			out.println("</script>");
			return null;
		} else {
			HttpSession session=request.getSession();
			session.setAttribute("id", dto.getMember_id());
			//session.setAttribute("pw", dto.getMember_pw());
			ActionForward forward=new ActionForward();
			forward.setPath("/boardList.bo");
			forward.setRedirect(false);
			return forward;
		}
		
	}

}
