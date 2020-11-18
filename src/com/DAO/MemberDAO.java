package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {

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

	// ȸ������
	public int Join(String name, String email, String pw, String address, String tel) {

		try {

			getConn();

			String sql = "insert into member values(?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, email);
			psmt.setString(3, pw);
			psmt.setString(4, address);
			psmt.setString(5, tel);
			// db�� sql�� ����غ�

			cnt = psmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	// �̸��� �ߺ� üũ
	public boolean idCheck(String email) {

		boolean check = true;
		try {
			getConn();

			String sql = "select * from member where email =?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);

			// db�� sql�� ����غ�

			rs = psmt.executeQuery();

			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return check;
	}

	// �α���
	public boolean Login(String email, String pw) {

		boolean check = true;
		try {
			getConn();

			String sql = "select * from member where email =? and pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, pw);

			// db�� sql�� ����غ�

			rs = psmt.executeQuery();
			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return check;
	}

	// ȸ����������
	public int update(String name, String address, String pw, String tel, String email) {
		int cnt = 0;
		try {
			getConn();

			String sql = "update member set name=?, address=?, pw=?, tel=? where email=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.setString(2, address);
			psmt.setString(3, pw);
			psmt.setString(4, tel);
			psmt.setString(5, email);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	// ȸ��Ż��
	public int delete(String email) {
		try {
			getConn();

			String sql = "delete from member where email=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

}
