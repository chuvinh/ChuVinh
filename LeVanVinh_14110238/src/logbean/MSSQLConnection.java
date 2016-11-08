package logbean;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class MSSQLConnection {
	private String DB_NAME;
	private String DB_PORT;
	private String DB_USERNAME;
	private String DB_PASSWORD;
	 
	public MSSQLConnection(String DB_NAME, String DB_PORT, String DB_USERNAME, String DB_PASSWORD) {
		this.DB_NAME = DB_NAME;
		this.DB_PORT = DB_PORT;
		this.DB_USERNAME = DB_USERNAME;
		this.DB_PASSWORD = DB_PASSWORD;
	}
	 
	public Connection getConnection() {
		Connection conn = null;
		try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		conn = DriverManager.getConnection("jdbc:sqlserver://localhost:" + DB_PORT + ";databaseName=" + DB_NAME + ";user=" + DB_USERNAME + ";password=" + DB_PASSWORD + ";");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return conn;
	}
}
