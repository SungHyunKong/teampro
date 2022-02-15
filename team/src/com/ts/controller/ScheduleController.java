
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

public class ScheduleController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ScheduleDAO dao = new ScheduleDAO();
		List<ScheduleVO> schedule = dao.scheduleInfo();

		JSONObject obj = new JSONObject();
		try {
			for (int i = 0; i < schedule.size(); i++) {
				obj.put("title", schedule.get(i).getTitle());
				obj.put("start", schedule.get(i).getStart1());
				obj.put("end", schedule.get(i).getEnd1());
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return null;
	}
}
