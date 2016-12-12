package logbean;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
			  conn = (Connection) DriverManager.getConnection(url+dbName,userName,password);
			  if(request.getParameter("username")!=null &&
			     request.getParameter("username")!="" && request.getParameter("password")!=null &&
			     request.getParameter("password")!="")
			  {
				  username = request.getParameter("username").toString();
				  userpass = request.getParameter("password").toString();
				  strQuery="select MSSV,Pass,Roleid,Ten from doanvien where MSSV='"+username+"' and  Pass='"+userpass+"'";
				  System.out.println(strQuery);
				  st = (Statement) conn.createStatement();
				  rs = st.executeQuery(strQuery);
				  int count=0;
				  String role="";
				  String us="";
				  while(rs.next())
				  {
					  session.setAttribute("username",rs.getString(1));
					  session.setAttribute("Ten",rs.getString(4));
					  role =rs.getString("Roleid");
					  us=rs.getString("MSSV");
					  count=count+1;
				  }
				  System.out.println(role);
				  System.out.println(us);
				  System.out.println(count);
				  if(count>0 && role.equals("dv"))
				  {
					  response.sendRedirect("doanvien_login.jsp?mssv="+us+"");
				  }
				  else{
					  if(count>0 && role.equals("ad"))
					  {
						  response.sendRedirect("admin_login.jsp?mssv="+us+"");
					  }
					  else{
						  if(count>0 && role.equals("cbdk"))
						  {
							  response.sendRedirect("cbdoankhoa_login.jsp?mssv="+us+"");
						  }
						  else{
							  if(count>0 && role.equals("cbdt"))
							  {
								  response.sendRedirect("cbdoantruong_login.jsp?mssv="+us+"");
							  }
							  else{
								  out.print("Sorry, username or password error!!!");
								  request.getRequestDispatcher("trangchu.jsp").include(request, response);
							  }
						  }
					  }
				  }
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
