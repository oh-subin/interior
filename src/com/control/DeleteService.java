package com.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MemberDAO;

@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. ����ڰ� � �̸����� �����ϰ� ������
		String email = request.getParameter("email");
				
		// 2. DAO �����ؼ� ���̺� �ִ� �̸��ϰ� ����
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(email); 
		
		HttpSession session = request.getSession();
		session.removeAttribute("email");
			
		//3. index.jsp�� �̵�
		if(cnt>0) {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('Ż�𼺰�'); location.href='"+"main.jsp"+"';</script>");
			writer.close();
		}else {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('Ż�� ����..������ �ٽ� �Է����ּ���.'); location.href='"+"delete.jsp"+"';</script>"); 
			writer.close();
		}
		
		
	}

}
