package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.ts.frontcontroller.Action;
import com.ts.frontcontroller.ActionForward;
import com.ts.model.BoardMemberDAO;
import com.ts.model.BoardMemberDTO;
public class MemberListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String id=(String) session.getAttribute("id");
		
		ActionForward forward=new ActionForward();
		
		if(id==null) {
			forward.setPath("memberLogin.me");
			forward.setRedirect(true);
			return forward;
		} else if(!id.equals("admin")) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println("<script>alert('관리자가 아닙니다!');");
			out.println("location.href='boardList.bo';</script>");
			return null;
		} else {
			BoardMemberDAO dao= new BoardMemberDAO();
			ArrayList<BoardMemberDTO> list=new ArrayList<BoardMemberDTO>();
			list=dao.getAllMember();
			
			request.setAttribute("list", list);
			forward.setPath("/dist/member/member_list.jsp");
			forward.setRedirect(false);
			return forward;
		}
	}

}
