package com.control;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.productDAO;
import com.DTO.productDTO;

@WebServlet("/GoDetail")
public class GoDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		//��ǰ �̸�,�̹��� ��������
		String pro_name = request.getParameter("pro_name");		
		System.out.println(pro_name);

		
		productDAO dao = new productDAO();
		productDTO product = dao.moreInfo(pro_name);

		// �����ϸ� ��ǰ �� �������� �̵�
		response.sendRedirect("DetailProduct.jsp");

	}


}
