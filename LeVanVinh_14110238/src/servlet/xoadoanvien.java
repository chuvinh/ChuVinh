package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Conn.dbcon;
import mode.doanvien;

/**
 * Servlet implementation class xoadoanvien
 */
@WebServlet("/xoadoanvien")
public class xoadoanvien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoadoanvien() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String mssv=request.getParameter("mssv");
		doanvien dv=new doanvien();
		dv.setMssv(mssv);
		if(!dv.deletedv())
		{
			out.print("<script>alert('Xóa thành công'); window.location.href='listdoanvien'</script>");
		}
		else
			out.print("<script>alert('Xóa thất bại'); window.location.href='listdoanvien'</script>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
