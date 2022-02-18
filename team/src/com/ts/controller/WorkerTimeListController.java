package com.ts.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.WorkerTimeDAO;
import com.ts.model.WorkerTimeVO;

public class WorkerTimeListController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			WorkerTimeDAO dao=new WorkerTimeDAO();
			List<WorkerTimeVO> list=dao.WorkerTimeList();
			request.setAttribute("list", list);
			
		
		return "workertime";
	}

}
