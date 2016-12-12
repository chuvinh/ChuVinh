package Conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Database {

	private Connection con;
	public ResultSet getData(String sql) throws Exception{
		ResultSet rs=null;
		openConnection();
		Statement sta=con.createStatement();
		rs=sta.executeQuery(sql);
		return rs;
	}
	public void openConnection() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3307/qlhdd","root","12345678");
	}
	public void closeConnection() throws Exception{
		if(con!=null && !con.isClosed()){
			con.close();
		}
	}
}
