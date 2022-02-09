package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.MemberDAO;
import com.ts.model.MemberVO;

public class MemberContentController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num=Integer.parseInt(request.getParameter("num"));
		
		MemberDAO dao=new MemberDAO();
		MemberVO vo=dao.memberContent(num);
		
		request.setAttribute("vo", vo);
		
		return "memberContent";
	}

}
