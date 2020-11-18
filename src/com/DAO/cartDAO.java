package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.DTO.cartDTO;

public class cartDAO {

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

	// ���� īƮ�� ��ǰ �ֱ�
	public int cart_insert(String email, String cart_name, int cart_cnt, int cart_price, String cart_img) {
		getConn();
		
		try {
			// DB���� ���
			String sql = "insert into cart(?,?) values(CART_SEQ.nextval, ?, ?, ?, ?, ?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, email);
			psmt.setString(2, cart_name);
			psmt.setInt(3, cart_cnt);
			psmt.setInt(4, cart_price);
			psmt.setString(5, cart_img);

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	// �̸��Ͽ� �´�  ��ٱ��� �����ִ� ���
	public ArrayList<cartDTO> showCart(String email) {
		
		cartDTO cart = null;
		ArrayList<cartDTO> cartList = new ArrayList<>();
				
		try {
			// DB ����	
			getConn(); 
			
			// ------------------- DB�� SQL ��ɹ� �غ�
			String sql = "select * from cart where email=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			
			
			while(rs.next()) {
				
				//��ü ��ٱ��� �����͸� ���
				int cart_num = rs.getInt(1);
				String email1 = rs.getString(2);
				String cart_name = rs.getString(3);
				int cart_cnt = rs.getInt(4);
				int cart_price = rs.getInt(5);
				String cart_img = rs.getString(6);
				
				// cartDTO ��ü�� 1���� DB���� ���� ��, ArrayList�� cartList�� ����
				cart = new cartDTO(cart_num, email1, cart_name, cart_cnt, cart_price, cart_img);
				cartList.add(cart);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cartList;	
	}
	
	// ��ٱ��Ͽ� �ִ� ��ǰ ���� ���
	public int delete_Cart(String email, String pro_name) {
		try {
			
			getConn();
			// ------------------------ DB����
			
			String sql = "delete from cart where email=? and pro_name=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, email);
			psmt.setString(2, pro_name);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
