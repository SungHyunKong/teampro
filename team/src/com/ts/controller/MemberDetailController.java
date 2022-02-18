package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.BoardMemberDAO;
import com.ts.model.BoardMemberDTO;

public class MemberDetailController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String member_id=request.getParameter("member_id");
		
		BoardMemberDAO dao= new BoardMemberDAO();
		BoardMemberDTO dto= dao.getDetailMember(member_id);
		request.setAttribute("dto", dto);
		request.setAttribute("id", member_id);
		
		return "member_detailForm";
	}

}
