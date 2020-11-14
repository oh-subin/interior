package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.DTO.productDTO;

public class productDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	int cnt = 0;

	// DB����
	public void getConn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
			// db���� ����x
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB���� ����
	public void close() {

		try {

			if (rs != null) {
				rs.close();

			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// ��Ÿ�Ͽ� �´� ��ǰ �����ִ� ���
	public ArrayList<productDTO> showProducts(String pro_style) {
		
		productDTO products = null;
		ArrayList<productDTO> productsList = new ArrayList<>();
		
		// DB ����	
		getConn(); 
		
		try {
			String sql = "select * from product where pro_style=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pro_style);
			// ------------------- DB�� SQL ��ɹ� �غ�
			rs = psmt.executeQuery();
			// ------------------- SQL�� ���� / ���� �� ó��
			
			while(rs.next()) {
				
				// ��ü ��ǰ �����͸� ���
				String pro_name = rs.getString(1);
				String pro_style1 = rs.getString(2);
				int pro_price = rs.getInt(3);
				String pro_img = rs.getString(4);
				
				// productDTO ��ü�� 1���� DB���� ���� ��, ArrayList�� productsList�� ����
				products = new productDTO(pro_name, pro_style1, pro_price, pro_img);
				productsList.add(products);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return productsList;
	}
	

	// ������ ���
	public productDTO moreInfo(String pro_name) {

		// DB���� ���
		getConn();

		productDTO product = null;

		try {

			String sql = "select * from product where pro_name = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pro_name);

			rs = psmt.executeQuery();

			if (rs.next()) {

				// product ��ü���� 
				product = new productDTO(rs.getString(1), 
										 rs.getString(2), 
										 rs.getInt(3), 
										 rs.getString(4));

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return product;
	}

	
}
