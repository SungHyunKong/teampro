package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.ScheduleDAO;
import com.ts.model.ScheduleVO;

public class ScheduleInsertController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String title =request.getParameter("title");
		System.out.println(start+"sdaf" + end +"dsaf" +title);
		ScheduleVO vo = new ScheduleVO(title,start,end);
		ScheduleDAO dao = new ScheduleDAO();
		dao.scheduleInsert(vo);
		
		return null;
	}

}
