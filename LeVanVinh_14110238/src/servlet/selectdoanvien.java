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


@WebServlet("/selectdoanvien")
public class selectdoanvien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public selectdoanvien() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mssv=request.getParameter("mssv");
		doanvien dv=new doanvien();
		dv.setMssv(mssv);
		ResultSet rs=dv.selectdv();
		RequestDispatcher rsd=request.getRequestDispatcher("doanvien_tracuu.jsp");
		request.setAttribute("listdoanvien", rs);
		rsd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
