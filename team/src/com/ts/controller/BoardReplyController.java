package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.QaBoardDAO;
import com.ts.model.QaBoardDTO;

public class BoardReplyController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		QaBoardDTO dto = new QaBoardDTO();
		int qa_num = Integer.parseInt(request.getParameter("qa_num"));
		dto.setQa_num(qa_num);
		dto.setQa_id(request.getParameter("qa_id"));
		dto.setQa_subject(request.getParameter("qa_subject"));
		dto.setQa_content(request.getParameter("qa_content"));
		dto.setQa_re_ref(Integer.parseInt(request.getParameter("qa_re_ref")));
		dto.setQa_re_lev(Integer.parseInt(request.getParameter("qa_re_lev")));
		dto.setQa_re_seq(Integer.parseInt(request.getParameter("qa_re_seq")));
		//System.out.println(request.getParameter("qa_re_ref"));
		//System.out.println(request.getParameter("qa_re_seq"));
		//System.out.println(request.getParameter("qa_re_lev"));

		QaBoardDAO dao = new QaBoardDAO();
		int succ = dao.boardReply(dto);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out=response.getWriter();
		if (succ > 0) {
			out.println("<script>alert('답글 등록 성공');");
			out.println("location.href='boardDetail.do?qa_num=" + qa_num + "';</script>");
		} else {
			out.println("<script>alert('답글 등록 실패');");
			out.println("history.go(-1);</script>");
		}

		return null;
	}

}
