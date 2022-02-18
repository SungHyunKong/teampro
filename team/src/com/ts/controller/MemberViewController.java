package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.model.BoardMemberDAO;
import com.ts.model.BoardMemberDTO;

public class MemberViewController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String id=(String) session.getAttribute("id");
		
		
		if(id==null) {
			
			return "loginForm";
		} else if(!id.equals("admin")) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out= response.getWriter();
			out.println("<script>alert('관리자가 아닙니다.');");
			out.println("location.href='boardList.do';</script>");
			return null;
		} else {
			request.setCharacterEncoding("utf-8");
			String member_id=request.getParameter("member_id");
			BoardMemberDAO dao= new BoardMemberDAO();
			BoardMemberDTO dto=dao.getDetailMember(member_id);
			request.setAttribute("dto", dto);
			
			return "member_info";
		}
		
	}

}
