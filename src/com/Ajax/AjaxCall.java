package com.Ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.MemberDAO;

@WebServlet("/AjaxCall")
public class AjaxCall extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("����������ȣ��");
		
		String email = request.getParameter("email");
		
		System.out.println("����ڰ� �Է��� �̸��� :"+email);
		
		MemberDAO dao = new MemberDAO();
		boolean check = dao.idCheck(email);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
	    out.print(check);
	
	
	}

}
