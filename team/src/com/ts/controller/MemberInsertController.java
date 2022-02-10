package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;


public class MemberInsertController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String ctp=request.getContextPath();
		
		String id= request.getParameter("id");
		String pw= request.getParameter("password");
		String name= request.getParameter("name");
		String birthyy= request.getParameter("birthyy");
		String birthmm= request.getParameter("birthmm");
		String birthdd= request.getParameter("birthdd");
		String birth=birthyy+birthmm+birthdd;
		String gender= request.getParameter("gender");
		String email=request.getParameter("email");
		String tel= request.getParameter("tel");
		
		MemberVO vo=new MemberVO();
		vo.setId(id);
		vo.setPw(pw);
		vo.setName(name);
		vo.setBirth(birth);
		vo.setGender(gender);
		vo.setEmail(email);
		vo.setTel(tel);
		
		MemberDAO dao=new MemberDAO();
		int cnt=dao.memberInsert(vo);
		String nextPage=null;
		if (cnt>0) {
			System.out.println("데이터 입력 성공");
		} else {
			System.out.println("데이터 입력 실패");
		}
		return nextPage;
	}

	
}
