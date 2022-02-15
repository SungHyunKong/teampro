package com.ts.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.controller.*;


@WebServlet("/BoardFrontController.bo")
public class BoardFrontController  extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String uri=request.getRequestURI();
		String context=request.getContextPath();
		String command=uri.substring(context.length());
		System.out.println(command);
		Action action= null;
		ActionForward forward=null;
		
		if(command.equals("/boardList.bo")) {
			action= new BoardListAction();
			forward=action.execute(request, response);
		} else if(command.equals("/boardWrite.bo")) {
			forward=new ActionForward();
			forward.setPath("/dist/board/board_write.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/boardAddAction.bo")) {
			action= new BoardAddAction();
			forward=action.execute(request, response);
		} else if(command.equals("/boardDetailAction.bo")) {
			action = new BoardDetailAction();
			forward = action.execute(request, response);
		} else if(command.equals("/boardDeleteAction.bo")) {
			action = new BoardDeleteAction();
			forward = action.execute(request, response);
		} else if(command.equals("/boardModifyView.bo")) {
			action = new BoardModifyView();
			forward = action.execute(request, response);
		} else if(command.equals("/boardModifyAction.bo")) {
			action = new BoardModifyAction();
			forward = action.execute(request, response);
		}
		
		
		if(forward!=null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher rd=request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
	}
}
