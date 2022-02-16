package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.frontcontroller.Action;
import com.ts.frontcontroller.ActionForward;
import com.ts.model.BoardMemberDAO;
import com.ts.model.BoardMemberDTO;

public class MemberDetailAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String member_id=request.getParameter("member_id");
		
		BoardMemberDAO dao= new BoardMemberDAO();
		BoardMemberDTO dto= dao.getDetailMember(member_id);
		request.setAttribute("dto", dto);
		request.setAttribute("id", member_id);
		ActionForward forward=new ActionForward();
		
		forward.setPath("/member_detailForm.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
