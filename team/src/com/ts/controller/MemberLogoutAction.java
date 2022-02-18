package com.ts.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.frontcontroller.Action;
import com.ts.frontcontroller.ActionForward;

public class MemberLogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("id");
		
		ActionForward forward=new ActionForward();
		forward.setPath("memberLogin.me");
		forward.setRedirect(true);
		return forward;
	}

}
