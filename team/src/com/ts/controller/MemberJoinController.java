package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.BoardMemberDAO;
import com.ts.model.BoardMemberDTO;

public class MemberJoinController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardMemberDTO dto = new BoardMemberDTO();
		dto.setMember_id(request.getParameter("member_id"));
		dto.setMember_pw(request.getParameter("member_pw"));
		dto.setMember_name(request.getParameter("member_name"));
		dto.setMember_birth(request.getParameter("member_birth"));
		dto.setMember_gender(request.getParameter("member_gender"));
		dto.setMember_email(request.getParameter("member_email"));

		BoardMemberDAO dao = new BoardMemberDAO();
		boolean result = dao.joinMember(dto);

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if (result == false) {
			out.println("<script>alert('회원가입 실패')");
			out.println("location.href='joinForm.jsp';</script>");
			return null;
		} else {
			out.println("<script>alert('회원가입 성공')");
			out.println("location.href='loginForm.jsp';</script>");
			return null;
		}
	}

}
