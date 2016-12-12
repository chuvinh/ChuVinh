package servlet;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mode.doanvien;

/**
 * Servlet implementation class xemchitietdv
 */
@WebServlet("/xemchitietdv")
public class xemchitietdv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xemchitietdv() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doanvien dv=new doanvien();
		String mssv=request.getParameter("mssv");
		dv.setMssv(mssv);
		ResultSet rs=dv.selectdv();
		RequestDispatcher rsd=request.getRequestDispatcher("doanvien_xemchitiet.jsp");
		request.setAttribute("listngdung", rs);
		rsd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
