package com.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.model.QaBoardDAO;
import com.ts.model.QaBoardDTO;
import com.ts.frontcontroller.Action;
import com.ts.frontcontroller.ActionForward;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardAddAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String realFolder="";
		String saveFolder="/boardUpload";
		int fileSize=5*1024*1024;
		ServletContext context=request.getServletContext();
		realFolder=context.getRealPath(saveFolder);
		System.out.println(realFolder);
		
		MultipartRequest multi=new MultipartRequest(request, realFolder, fileSize, "utf-8", new DefaultFileRenamePolicy());
		
		QaBoardDTO dto= new QaBoardDTO();
		dto.setBoard_id(multi.getParameter("board_id"));
		dto.setBoard_subject(multi.getParameter("board_subject"));
		dto.setBoard_content(multi.getParameter("board_content"));
		//System.out.println(multi.getOriginalFileName((String) multi.getFileNames().nextElement()));
		dto.setBoard_file(multi.getOriginalFileName((String) multi.getFileNames().nextElement()));
		
		QaBoardDAO dao= new QaBoardDAO();
		int succ=dao.boardInsert(dto);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out= response.getWriter();
		if(succ>0) {
			out.println("<script>alert('등록 성공');");
			out.println("location.href='boardList.bo';</script>");
		} else {
			out.println("<script>alert('등록 실패');");
			out.println("location.href='boardList.bo';</script>");
		}
		return null;
	}

}
