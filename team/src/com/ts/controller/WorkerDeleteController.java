package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.WorkerDAO;


public class WorkerDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
String ctp=request.getContextPath();
		
 		WorkerDAO dao=new WorkerDAO();
 		int cnt=dao.workerDelete();
 		String nextPage=null;
		
		return "worker";
	}

}
