package frontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;


@WebServlet("*.do")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String url=request.getRequestURL().toString();
		String uri=request.getRequestURI();
		String ctp=request.getContextPath();
		
		String command=uri.substring(ctp.length());
		System.out.println(command);
		String command2=command.split("/")[2];
		System.out.println(command2);
		Controller controller=null;
		String nextPage=null;
		
		HandlerMapping mapp=new HandlerMapping();
		controller=mapp.getController("/"+command2);
		nextPage=controller.requestHandler(request, response);
		
		if(nextPage!=null) {
			if(nextPage.indexOf("redirect:")!=-1) {
				response.sendRedirect(nextPage.split(":")[1]);
			} else {
				RequestDispatcher rd=request.getRequestDispatcher(ViewResolver.makeView(nextPage));
				rd.forward(request, response);
			}
		}
	}

}
