package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.model.QaBoardDAO;
import com.ts.model.QaBoardDTO;

public class BoardModifyViewController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qa_num = Integer.parseInt(request.getParameter("qa_num"));
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		QaBoardDAO dao = new QaBoardDAO();
		boolean result = dao.isBoardWriter(qa_num, id);	//작성자 확인
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if(result == false) {
			out.println("<script>alert('수정 권한이 없습니다!');");
			out.println("history.go(-1);</script>");
		} else {
			QaBoardDTO dto = dao.getDetail(qa_num);
			request.setAttribute("dto", dto);
			return "board_modify";
		}
		return null;
	}
}