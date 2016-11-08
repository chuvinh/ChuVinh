package servlet.loginlogout;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ConnectDB {

	Connection connect = null;
	Statement stmt = null;
	ResultSet rs = null;

	protected void hasDriver() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException ex) {
			throw new Exception("Invalid Driver!!Please check this drver....");
		}
	}

	protected Connection openConnect() throws Exception {
		if (connect == null) {
			hasDriver();
			String url = "jdbc:mysql://localhost:3307/qlhhd";
			// url_sql = "....";
			try {
				this.connect = DriverManager.getConnection(url, "root",
						"123456789");
			} catch (SQLException e) {
				throw new Exception(e.getMessage()
						+ "Connect failed to database .... ");
			}
		}
		return connect;
	}

	protected Statement getStatement() throws SQLException, Exception {
		if (stmt == null) {
			stmt = openConnect().createStatement();
		}
		return stmt;
	}

	public ArrayList<user_info> getAll() throws Exception {
		ArrayList<user_info> lst = new ArrayList<user_info>();
		String strSQL = "select Username,Pass from users";
		try {
			rs = getStatement().executeQuery(strSQL);
			while (rs.next()) {
				String us = rs.getString("Username");
				user_info ui = new user_info(us);
				lst.add(ui);
			}
		} catch (Exception e) {
			throw new Exception(e.getMessage() + " Error at : " + strSQL);
		}
		closeConnet();
		return lst;
	}

	public int executeUpdate(String strSQL) throws Exception {
		int result = 0;
		try {
			result = getStatement().executeUpdate(strSQL);
		} catch (Exception ex) {
			throw new Exception(ex.getMessage() + " Error at: " + strSQL);
		} finally {
			this.closeConnet();
		}
		return result;
	}
 
	public boolean login(String username, String password) {
		Connection con;
		try {
			con = openConnect();
			String sql = "select Username,Pass from users where Username='" + username
					+ "' and Pass='" + password + "'";
			PreparedStatement ps;
			try {
				ps = (PreparedStatement)con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					con.close();
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		return false;
	}

	public Login getUser(String nameuser) throws Exception {
		String sql = "select * from user_info where name_user=?";
		PreparedStatement pst = openConnect().prepareStatement(sql);
		pst.setString(1, nameuser);
		ResultSet rs = pst.executeQuery();
		Login ui = null;
		if (rs.next()) {
			String us = rs.getString("name_user");
			String pass = rs.getString("password");
			ui = new Login(us, pass);
		}
		return ui;
	}

	public void closeConnet() throws SQLException {
		if (rs != null && !rs.isClosed())
			rs.close();
		if (stmt != null)
			stmt.close();
		if (connect != null)
			connect.close();
	}

	public static void main(String[] args) throws Exception {

	}

}