package com.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.cartDAO;

@WebServlet("/CartInsert")
public class CartInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// �ѱ� ���ڵ�
		request.setCharacterEncoding("UTF-8");

		// 1. �Է��� �� ��������

		// Session������ �� ����
		HttpSession session = request.getSession();
		// ���ǿ��� �̸��� ���� ��������
		String email = (String) session.getAttribute("email");

		// ��ǰ �̸� ���� ��������
		String cart_name = request.getParameter("pro_name");

		// ��ǰ ���� ���� ��������
		int cart_price = Integer.parseInt(request.getParameter("pro_price"));

		// ��ǰ ���� ���� ��������
		int cart_cnt = 1;

		// ��ǰ �̹��� ���� ��������
		String cart_img = request.getParameter("pro_img");
		
		
		System.out.println(email);
		System.out.println(cart_name);
		System.out.println(cart_cnt);
		System.out.println(cart_price);
		System.out.println(cart_img);

		cartDAO dao = new cartDAO();
		int cnt = dao.cart_insert(email, cart_name, cart_cnt, cart_price, cart_img);

		// 2. DB���� �Է��� �� ã��
		if (cnt > 0) {
			System.out.println("��ٱ��Ͽ� ��ǰ �ֱ� ����");
			response.sendRedirect("basket.jsp");
		} else {
			System.out.println("��ǰ �ֱ� ����");
			response.sendRedirect("404.jsp");
		}
	}

}
