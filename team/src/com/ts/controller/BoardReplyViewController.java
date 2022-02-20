package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.QaBoardDAO;
import com.ts.model.QaBoardDTO;

public class BoardReplyViewController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int qa_num=Integer.parseInt(request.getParameter("qa_num"));
		QaBoardDAO dao= new QaBoardDAO();
		QaBoardDTO dto= dao.getDetail(qa_num);
		
		request.setAttribute("dto", dto);
		
		return "board_reply";
	}

}
