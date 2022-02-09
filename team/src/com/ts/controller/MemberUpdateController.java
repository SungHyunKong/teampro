package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.MemberDAO;
import com.ts.model.MemberVO;

public class MemberUpdateController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String ctp=request.getContextPath();
		
		request.setCharacterEncoding("utf-8");
		int num=Integer.parseInt(request.getParameter("num"));
		int age=Integer.parseInt(request.getParameter("age"));
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
		MemberVO vo=new MemberVO();
		
		
		MemberDAO dao=new MemberDAO();
		int cnt=dao.memberUpdate(vo);
		String nextPage=null;
		if(cnt>0) {
			nextPage="redirect:"+ctp+"/memberList.do";
		} else {
			throw new ServletException("not update");
		}
		
		return nextPage;
	}

}
