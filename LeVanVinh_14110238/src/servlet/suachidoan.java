package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mode.chidoan;

/**
 * Servlet implementation class suachidoan
 */
@WebServlet("/suachidoan")
public class suachidoan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public suachidoan() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		if(request.getParameter("dk")!=null){
			String macd=request.getParameter("macd");
			String tencd=request.getParameter("tencd");
			String tencb=request.getParameter("tencb");
			String sdt=request.getParameter("sdt");
			String email=request.getParameter("email");
			String khoa=request.getParameter("khoa");
			chidoan cd=new chidoan();
			cd.setMacd(macd);
			cd.setTencd(tencd);
			cd.setTencb(tencb);
			cd.setSdt(sdt);
			cd.setEmail(email);
			cd.setKhoa(khoa);
			cd.suacd();
			out.print("<script>window.location.href='selectchidoan';</script>");
		}

	}

}
