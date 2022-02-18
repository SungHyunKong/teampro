package com.ts.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.ResponseWrapper;

import com.ts.model.ScheduleDAO;
import com.ts.model.ScheduleVO;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.simple.JSONArray;
public class ScheduleController implements Controller{
	
	@SuppressWarnings("unchecked")
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ScheduleDAO dao = new ScheduleDAO();
		
		List<ScheduleVO> list= dao.scheduleInfo();
		JSONObject obj = new JSONObject();
		JSONArray title = new JSONArray();
		JSONArray start = new JSONArray();
		JSONArray end = new JSONArray();
		for (int i = 0; i < list.size(); i++) {
			title.add(list.get(i).getTitle().toString());
			start.add(list.get(i).getStart1().toString());
			end.add(list.get(i).getEnd1().toString());
		}
		
		try {
			obj.put("title", title);
			obj.put("start", start);
			obj.put("end", end);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("obj", obj);
		return null;
	}
}

