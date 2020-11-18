package com.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.MemberDAO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// �ѱ� ���ڵ�
		request.setCharacterEncoding("UTF-8");

		// 1. ����ڰ� �Է��� �� �޾ƿ���
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");

		MemberDAO dao = new MemberDAO();																																									
		int cnt = dao.Join(name, email, pw, address, tel);

		if (cnt > 0) { // SQL�� ������ �����ϸ�
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('ȸ������ ���� ȯ���մϴ�!'); location.href='" + "main.jsp" + "';</script>");
			writer.close();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('ȸ������ ����..������ �ٽ� �Է����ּ���.'); location.href='" + "register.jsp" + "';</script>");
			writer.close();
		}

	}

}
