package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.WorkerDAO;
import com.ts.model.WorkerVO;


public class WorkerInsertController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		
		String id=request.getParameter("worker_id");
		String name=request.getParameter("worker_name");
		String birth=request.getParameter("worker_birth");
		String sung=request.getParameter("worker_sung");
		String rank=request.getParameter("worker_rank");
		String dpname=request.getParameter("worker_dpname");
		String yn=request.getParameter("worker_yn");
		System.out.println(id);
		System.out.println(name);
		System.out.println(birth);
		System.out.println(sung);
		System.out.println(rank);
		System.out.println(dpname);
		System.out.println(yn);
		
		
		WorkerVO vo=new WorkerVO();
		vo.setWorker_id(id);
		vo.setWorker_name(name);
		vo.setWorker_birth(birth);
		vo.setWorker_sung(sung);
		vo.setWorker_rank(rank);
		vo.setWorker_dpname(dpname);
		vo.setWorker_yn(yn);
		System.out.println(id);
		System.out.println(name);
		
		WorkerDAO dao=new WorkerDAO();
		int cnt=dao.workerInsert(vo);
		return "worker";
	}

}
