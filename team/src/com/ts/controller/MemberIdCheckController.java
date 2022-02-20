package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.BoardMemberDAO;
import com.ts.model.BoardMemberDTO;

public class MemberIdCheckController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardMemberDTO dto= new BoardMemberDTO();
		dto.setMember_id(request.getParameter("member_id"));
		//System.out.println(dto.getMember_id());
		BoardMemberDAO dao=new BoardMemberDAO();
		int cnt=dao.idCheck(dto);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		if(cnt==0) {
			
			out.println("사용 가능한 아이디 입니다.");
			out.println("<script>opener.document.join.chk.value='1'</script>");
			return null;
		} else {
			out.println("중복된 아이디 입니다.");
			out.println("<script>opener.document.join.chk.value='0'</script>");
			return null;
		}
		
	}

}
