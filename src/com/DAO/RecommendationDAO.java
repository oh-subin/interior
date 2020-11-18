package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.DTO.RecommendationDTO;

public class RecommendationDAO {

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

	// ����ڰ� �Է��� ���ǿ� �´� ���� �����ִ� ���
	public ArrayList<RecommendationDTO> showIMG(String rec_space, String rec_size, String rec_familyShape) {

		RecommendationDTO imgs = null;
		ArrayList<RecommendationDTO> imgList = new ArrayList<>();

		try {
			// DB ����
			getConn();

			// ------------------- DB�� SQL ��ɹ� �غ�
			String sql = "select rec_style, rec_title, rec_imgurl from INTERIOR_CONTENTS where rec_space=? and rec_size=? and rec_familyshape=?";
			psmt = conn.prepareStatement(sql); // rec_style, rec_title, rec_imgurl
			psmt.setString(1, rec_space);
			psmt.setString(2, rec_size);
			psmt.setString(3, rec_familyShape);

			rs = psmt.executeQuery();

			while (rs.next()) {

				// ��ü ��Ÿ��, �̹���, ���� ���
				String rec_style = rs.getString(1);
				String rec_title = rs.getString(2);
				String rec_img = rs.getString(3);

				// cartDTO ��ü�� 1���� DB���� ���� ��, ArrayList�� cartList�� ����
				imgs = new RecommendationDTO(rec_style, rec_title, rec_img);
				imgList.add(imgs);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return imgList;
	}

	// ù��° ��õ �� ����ڰ� �Է��� ���� ���� INTERIOR_USER ���̺� ��� ���
	public int rating_insert(String email, int rating1, int rating2, int rating3, int rating4) {
		int cnt = 0;

		try {

			getConn();

			String sql = "insert into INTERIOR_USER(USERID,style15,style24,style54,style55) values (?,?,?,?,?) ";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setInt(2, rating1);
			psmt.setInt(3, rating2);
			psmt.setInt(4, rating3);
			psmt.setInt(5, rating4);

			System.out.println("��Ÿ��1�� ������?: " + rating1);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
