package com.ts.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.WorkerDAO;
import com.ts.model.WorkerVO;

public class WorkerController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		WorkerDAO dao=new WorkerDAO();
		List<WorkerVO> list=dao.WorkerList();
		request.setAttribute("list", list);
	
		return "worker";
	}
	
}
