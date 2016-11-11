package logbean;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public login() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		System.out.println("MySQL Connect Example.");
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3307/";
		String dbName = "qlhdd";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root"; 
		String password = "12345678";
		String username="";
		String userpass="";
		String strQuery= "";
		Statement st=null;
		ResultSet rs=null;
		HttpSession session = request.getSession(true);
		try{
			Class.forName(driver).newInstance();
			  conn = DriverManager.getConnection(url+dbName,userName,password);
			  if(request.getParameter("username")!=null &&
			     request.getParameter("username")!="" && request.getParameter("password")!=null &&
			     request.getParameter("password")!="")
			  {
				  username = request.getParameter("username").toString();
				  userpass = request.getParameter("password").toString();
				  strQuery="select Username,Pass from users where Username='"+username+"' and  Pass='"+userpass+"'";
				  System.out.println(strQuery);
				  st = (Statement) conn.createStatement();
				  rs = st.executeQuery(strQuery);
				  int count=0;
				  while(rs.next())
				  {
					  session.setAttribute("username",rs.getString(1));
					  count=count+1;
				  }
				  if(count>0)
				  {
					  response.sendRedirect("doanvien_login.jsp");
				  }
				  else
				  {
					  out.print("Sorry, username or password error!!!");
					  request.getRequestDispatcher("trangchu.jsp").include(request, response);
				  }
			  }
			  else
			  {
				  response.sendRedirect("trangchu.jsp");
			  }
			  System.out.println("Connected to the database"); 
			  conn.close();
			  System.out.println("Disconnected from database");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
