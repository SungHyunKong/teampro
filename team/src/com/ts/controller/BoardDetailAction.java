package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.model.QaBoardDAO;
import com.ts.model.QaBoardDTO;
import com.ts.frontcontroller.Action;
import com.ts.frontcontroller.ActionForward;

public class BoardDetailAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qa_num = Integer.parseInt(request.getParameter("qa_num"));
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		QaBoardDAO dao = new QaBoardDAO();
		QaBoardDTO dto = dao.getDetail(qa_num);
		
		if(!id.equals(dto.getQa_id())) {//작성자와 로그인 id가 같을경우 조회수가 증가하지 않음
			dao.readCount(qa_num);	//조회수 증가
		}
		dto = dao.getDetail(qa_num);	//증가한 조회수를 가져옴
		request.setAttribute("dto", dto);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/board_view.jsp");
		forward.setRedirect(false);
		return forward;
	}

}