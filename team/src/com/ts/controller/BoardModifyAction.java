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
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		QaBoardDTO dto = new QaBoardDTO();
		dto.setBoard_num(board_num);
		dto.setBoard_subject(request.getParameter("board_subject"));
		dto.setBoard_content(request.getParameter("board_content"));
		
		QaBoardDAO dao = new QaBoardDAO();
		int succ = dao.boardUpdate(dto);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if(succ > 0) {
			out.println("<script>alert('수정되었습니다!');");
			out.println("location.href='boardDetailAction.bo?board_num=" + board_num + "';</script>");
		} else {
			out.println("<script>alert('수정 실패!');");
			out.println("location.href='boardDetailAction.bo?board_num=" + board_num + "';</script>");
		}
		
		return null;
	}
}