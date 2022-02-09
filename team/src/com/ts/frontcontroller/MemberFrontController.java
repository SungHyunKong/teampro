package com.ts.frontcontroller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.controller.Controller;
import com.ts.controller.MemberContentController;
import com.ts.controller.MemberDeleteController;
import com.ts.controller.MemberInsertController;
import com.ts.controller.MemberListController;
import com.ts.controller.MemberRegisterController;
import com.ts.controller.MemberUpdateController;
import com.ts.model.MemberDAO;
import com.ts.model.MemberVO;


@WebServlet("*.do")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
		request.setCharacterEncoding("utf-8");
		String url=request.getRequestURL().toString();
//		System.out.println(url);
		String uri=request.getRequestURI();
//		System.out.println(uri);
		String ctp=request.getContextPath();
//		System.out.println(ctp);
		String command=uri.substring(ctp.length());
		
		Controller controller=null;
		String nextPage=null;
		
		// 핸들러 맵핑
		HandlerMapping mapp=new HandlerMapping();
		controller=mapp.getController(command);
		nextPage=controller.requestHandler(request, response);
		
		if(nextPage != null) {
			if ( nextPage.indexOf("redirect:") != -1 ) {
				//   redirect:/MVC04/memberList.do
				response.sendRedirect(nextPage.split(":")[1]);
			} else {
				RequestDispatcher rd=request.getRequestDispatcher(ViewResolver.makeView(nextPage));
				rd.forward(request, response);
			}
		}
		
	}

}
