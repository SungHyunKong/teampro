
package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.json.simple.JSONArray;

import com.ts.model.ScheduleDAO;
import com.ts.model.ScheduleVO;


public class ScheduleController implements Controller{
	@SuppressWarnings("unchecked")
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		response.setCharacterEncoding("UTF-8");
		
		ScheduleDAO dao = new ScheduleDAO();
		
		List<ScheduleVO> list= dao.scheduleInfo();
		HashMap<String, Object> hash = new HashMap<String, Object>();
		
		JSONArray arr = new JSONArray();
		
		
		for (int i = 0; i < list.size(); i++) {
			hash.put("title", list.get(i).getTitle().toString());
			hash.put("start", list.get(i).getStart1().toString());
			hash.put("end", list.get(i).getEnd1().toString());
			
			JSONObject obj = new JSONObject(hash);
			arr.add(obj);
		}
		
		
		
		request.setAttribute("arr", arr);
//		System.out.println(request.getAttribute("arr"));
		
		
		PrintWriter writer = response.getWriter();
	    writer.print(arr);
	    writer.close();
		return null;
	}
	}
