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

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. �Է��� �� ��������
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		System.out.println(email);
		System.out.println(pw);
				
		MemberDAO dao = new MemberDAO();
		boolean check = dao.Login(email, pw);
			
		// 2. DB���� �Է��� �� ã��
			         
        if(check) { // SQL�� ������ �����ϸ�  / rs.next() : rs���� �����͸� �ϳ��ϳ� �˻��ؼ� ���� ������ true/false

			HttpSession session = request.getSession();
			// session������ ����ϱ� ���� ��ü ����
			
			session.setAttribute("email", email);
			// session������ email�̸�ǥ�� �α��ο� ������ ����� email�� ����
			
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('�α��� ����! ��ȣ�ϴ� ���׸��� ������ �������ּ���.'); location.href='"+"main.jsp"+"';</script>"); 
			writer.close();
			
		}else { // ���н� 
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('�α��� ����.. ���̵�� ��й�ȣ�� Ȯ�����ּ���.'); location.href='"+"login.jsp"+"';</script>"); 
			writer.close();
		}
		
	}

}
