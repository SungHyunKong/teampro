package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.QaBoardDAO;
import com.ts.model.QaBoardDTO;
import com.ts.frontcontroller.Action;
import com.ts.frontcontroller.ActionForward;

public class BoardModifyAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int qa_num = Integer.parseInt(request.getParameter("qa_num"));
		QaBoardDTO dto = new QaBoardDTO();
		dto.setQa_num(qa_num);
		dto.setQa_subject(request.getParameter("qa_subject"));
		dto.setQa_content(request.getParameter("qa_content"));
		
		QaBoardDAO dao = new QaBoardDAO();
		int succ = dao.boardUpdate(dto);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if(succ > 0) {
			out.println("<script>alert('수정되었습니다!');");
			out.println("location.href='boardDetailAction.bo?qa_num=" + qa_num + "';</script>");
		} else {
			out.println("<script>alert('수정 실패!');");
			out.println("location.href='boardDetailAction.bo?qa_num=" + qa_num + "';</script>");
		}
		
		return null;
	}
}