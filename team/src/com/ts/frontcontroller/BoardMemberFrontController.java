package com.ts.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.controller.*;
import com.ts.frontcontroller.*;

@WebServlet("/BoardMemberFrontController.me")
public class BoardMemberFrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String uri=request.getRequestURI();
		String context=request.getContextPath();
		String command=uri.substring(context.length());
		System.out.println(command);
		Action action=null;
		ActionForward forward=null;
		
		request.setCharacterEncoding("utf-8");
		
		if(command.equals("/memberLogin.me")) {
			forward=new ActionForward();
			forward.setPath("/loginForm.jsp");
			forward.setRedirect(false);
		} else if(command.equals("/memberLoginAction.me")) {
			action=new MemberLoginAction();
			forward=action.execute(request, response);
		} else if(command.equals("/memberJoin.me")) {
			forward= new ActionForward();
			forward.setPath("/joinForm.jsp");
			forward.setRedirect(false);
		} else if (command.equals("/memberJoinAction.me")) {
			action=new MemberJoinAction();
			forward=action.execute(request, response);
		} else if(command.equals("/memberLogout.me")) {
			action=new MemberLogoutAction();
			forward=action.execute(request, response);
			
		} else if(command.equals("/memberListAction.me")) {
			action=new MemberListAction();
			forward=action.execute(request, response);
		} else if(command.equals("/memberDeleteAction.me")) {
			action=new MemberDeleteAction();
			forward=action.execute(request, response);
		} else if(command.equals("/memberViewAction.me")) {
			action=new MemberViewAction();
			forward=action.execute(request, response);
		} else if(command.equals("/memberDetailAction.me")) {
			action= new MemberDetailAction();
			forward=action.execute(request, response);
		} else if(command.equals("/memberUpdateAction.me")) {
			action= new MemberUpdateAction();
			forward=action.execute(request, response);
		}
		
		if(forward!=null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher rd=request.getRequestDispatcher(forward.getPath());
				System.out.println(forward.getPath());
				rd.forward(request, response);
			}
		}
	}
}
