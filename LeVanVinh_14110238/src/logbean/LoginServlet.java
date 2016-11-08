package logbean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Servlet", urlPatterns = { "/Servlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			response.setContentType("text/html;charset=UTF-8");
			try (PrintWriter out = response.getWriter()) {
			String userName = request.getParameter("txtUsername");
			String passWord = request.getParameter("txtPassword");
			if (userName != null && passWord != null) {
			Users user = new Users(userName, passWord);
			if(user.isValid()){
			request.setAttribute("username", userName);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("WelcomePage.jsp");
			requestDispatcher.forward(request, response);
			}else{
			response.sendRedirect("ErrorPage.jsp");
			}
			}
			}
			}
}
