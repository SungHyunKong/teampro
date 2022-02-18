package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.WorkerDAO;
import com.ts.model.WorkerVO;

public class WorkerUpdateController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String ctp=request.getContextPath();
		
		request.setCharacterEncoding("utf-8");
		String worker_name=request.getParameter("worker_name");
		String worker_birth=request.getParameter("worker_birth");
		String worker_sung=request.getParameter("worker_sung");
		String worker_rank=request.getParameter("worker_rank");
		String worker_dpname=request.getParameter("worker_dpname");
		String worker_yn=request.getParameter("worker_yn");
		
		WorkerVO vo=new WorkerVO();
		vo.setWorker_name(worker_name);
		vo.setWorker_birth(worker_birth);
		vo.setWorker_sung(worker_sung);
		vo.setWorker_rank(worker_rank);
		vo.setWorker_dpname(worker_dpname);
		vo.setWorker_yn(worker_yn);
		
		
		WorkerDAO dao=new WorkerDAO();
		int cnt=dao.workerUpdate(vo);
		
		return "redirect:worker.do";
		
	}

}
