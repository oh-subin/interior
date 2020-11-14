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
import com.DAO.cartDAO;

@WebServlet("/CartDelete")
public class CartDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		// 1. 사용자가 어떤 상품을 삭제하고 싶은지
		String email = (String) session.getAttribute("email");
		String pro_name = request.getParameter("pro_name");
		
		// 2. DAO 연결해서 테이블에 있는 상품 삭제
		cartDAO dao = new cartDAO();
		int cnt = dao.delete_Cart(email, pro_name); 
		
		if(cnt>0) {
			response.setContentType("text/html1;charset=euc-kr"); //������ ����
			PrintWriter out = response.getWriter();
			out.print(cnt);
		} else {
			
		}
	}

}
