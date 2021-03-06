package com.ts.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.model.QaBoardDAO;
import com.ts.model.QaBoardDTO;

public class BoardListController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String id=(String) session.getAttribute("id");
		
		QaBoardDAO dao=new QaBoardDAO();
		int listCount =dao.getListCount();
		//System.out.println("listCount: " + listCount);
		
		int page=1;
		int limit=10;
		if(request.getParameter("page")!=null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		List<QaBoardDTO> list= new ArrayList<QaBoardDTO>();
		list=dao.getBoardList(page, limit);
		
		int maxPage=(int)((double)listCount/10 +0.95);
		int startPage=(((int)((double)page/10+0.9))-1)*10+1;
		
		int endPage=startPage+10-1;
		if(endPage>maxPage+10 -1);{
			endPage=maxPage;
		}
		
		request.setAttribute("page", page);
		request.setAttribute("maxPage", maxPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("listCount", listCount);
		request.setAttribute("list", list);
		
		
		if(id==null) {
			return "loginForm";
		} else
		    return "board_list";
	
	}

}
