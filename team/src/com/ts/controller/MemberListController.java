package com.ts.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.MemberDAO;
import com.ts.model.MemberVO;

public class MemberListController implements Controller{
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberDAO dao=new MemberDAO();
		List<MemberVO> list=dao.memberList();
		request.setAttribute("list", list);
		
		System.out.println("list : "+ list);
		
		String ctp=request.getContextPath();
		
		System.out.println("ctp: " + ctp);
		
		String nextPage = null;
		
		nextPage="worker";
		
		return nextPage;
//		return "/WEB-INF/member/memberList.jsp";
	}
	
	
}