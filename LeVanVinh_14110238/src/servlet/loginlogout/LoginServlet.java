package servlet.loginlogout;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		if(name.equals("user") && password.equals("123")){
			HttpSession session=request.getSession();
			session.setAttribute("username", name);
			
			request.getRequestDispatcher("index.jsp").include(request, response);
			out.print(session.getAttribute("username"));
		}
		else{
			out.print("Sory,username or password error!");
			request.getRequestDispatcher("Login.jsp").include(request,response);
		}
		out.close();
	}

}
