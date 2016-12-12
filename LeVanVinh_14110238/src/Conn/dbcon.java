package Conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import mode.doanvien;


public class dbcon {

	private String dbclass="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3307/qlhdd";
	private String user="root";
	private String pass="12345678";
	private Connection conn;
	private Statement stm;
	private PreparedStatement ps;
	public dbcon(){
		try {
			Class.forName(dbclass);
			conn=DriverManager.getConnection(url, user, pass);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	public boolean Add_update(String sql){
		try {
			ps=conn.prepareStatement(sql);
			ps.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
	public ResultSet getList(String sql){
		ResultSet rs=null;
		try{
			stm=conn.createStatement();
			rs=stm.executeQuery(sql);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
}
