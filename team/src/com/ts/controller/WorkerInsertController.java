package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
		
		
		
		
		
		WorkerDAO dao=new WorkerDAO();
		List<WorkerVO> list=dao.WorkerList();
		int cnt = 0;
		System.out.println(list);
		if(list.size() == 0) {
			WorkerVO vo=new WorkerVO(id,name,birth,sung,rank,dpname,yn);
			cnt = dao.workerInsert(vo);
		}else {
			for (int i = 0; i < list.size(); i++) {
				if(id.equals(list.get(i).getWorker_id())) {
					return "redirect:worker.do?fail=1";
				}else {
					WorkerVO vo=new WorkerVO(id,name,birth,sung,rank,dpname,yn);
					cnt = dao.workerInsert(vo);
				}
			}
		}
		
		
		
		return "redirect:worker.do";
	}

}
