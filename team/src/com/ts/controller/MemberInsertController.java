package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.api.pipe.NextAction;
import com.ts.model.MemberDAO;
import com.ts.model.MemberVO;

public class MemberInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String ctp=request.getContextPath();
		
		System.out.println("ctp: " + ctp);
		
		String worker_code=request.getParameter("worker_code");
		String worker_id=request.getParameter("worker_id");
		String worker_name=request.getParameter("worker_name");
		String worker_birth=request.getParameter("worker_birth");
		String worker_sung=request.getParameter("worker_sung");
		String worker_rank=request.getParameter("worker_rank");
		String worker_dpname=request.getParameter("worker_dpname");
		
//		MemberVO vo=new MemberVO(id, pass, name, age, email, phone);
		
		MemberVO vo=new MemberVO();
		
		vo.setWorker_code(worker_code);
		vo.setWorker_id(worker_id);
		vo.setWorker_name(worker_name);
		vo.setWorker_birth(worker_birth);
		vo.setWorker_sung(worker_sung);
		vo.setWorker_rank(worker_rank);
		vo.setWorker_dpname(worker_dpname);
		
		
		System.out.println(vo);
	
		MemberDAO dao=new MemberDAO();
		int cnt=dao.memberInsert(vo);
//		PrintWriter out=response.getWriter();
		String nextPage=null;
		if(cnt>0) {
//			out.println("success !!");
			nextPage="redirect:"+ctp+"/memberList.do";
		} else {
			throw new ServletException("Not Insert");
		}
		
		return nextPage;
	}

}
