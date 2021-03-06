package servlet;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mode.tinnhan;

/**
 * Servlet implementation class selectcbdktinnhan
 */
@WebServlet("/selectcbdktinnhan")
public class selectcbdktinnhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectcbdktinnhan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		tinnhan tn=new tinnhan();
		String mssv=request.getParameter("mssv");
		tn.setManguoinhan(mssv);
		ResultSet rs=tn.listtn();
		RequestDispatcher rsd=request.getRequestDispatcher("cbdoankhoa_tinnhan.jsp");
		request.setAttribute("listtn", rs);
		rsd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
