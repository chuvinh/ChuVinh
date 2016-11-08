package logbean;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.mysql.jdbc.CallableStatement;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

public class Users {
	private String userName;
	private String passWord;
	 
	public Users(String username, String password) {
		this.userName = username;
		this.passWord = password;
	}
	 
	private String md5(String passwordToHash){
		String generatedPassword = null;
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(passwordToHash.getBytes());
			byte[] bytes = md.digest();
			StringBuilder sb = new StringBuilder();
			for(int i=0; i< bytes.length ;i++)
			{
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}
			generatedPassword = sb.toString();
		}
		catch (NoSuchAlgorithmException e)
		{
			e.printStackTrace();
		}
		return generatedPassword;
	 
	}
	 
	public boolean isValid() {
		Connection conn = null;
		CallableStatement callableStatement = null;
		Boolean loginState = false;
		String DB_NAME = "users";
		String DB_PORT = "3007";
		String DB_USERNAME = "admin";
		String DB_PASSWORD = "123456";
		try {
			MSSQLConnection db = new MSSQLConnection(DB_NAME, DB_PORT, DB_USERNAME, DB_PASSWORD);
			conn = db.getConnection();
			callableStatement = conn.prepareCall("{call CheckLogin(?, ?)}");
			callableStatement.setString(1, this.userName);
			callableStatement.setString(2, md5(this.passWord));
			ResultSet rs = callableStatement.executeQuery();
			while (rs.next()) {
			loginState = true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
			}
			if (callableStatement != null) {
				try {
					callableStatement.close();
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
			}
		}
		return loginState;
	}
}
