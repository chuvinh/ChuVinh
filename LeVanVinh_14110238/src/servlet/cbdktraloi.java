package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mode.tinnhan;

/**
 * Servlet implementation class cbdktraloi
 */
@WebServlet("/cbdktraloi")
public class cbdktraloi extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public cbdktraloi() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		if(request.getParameter("guitn")!=null){
			String manhan=request.getParameter("manhan");
			String magui=request.getParameter("magui");
			String noidung=request.getParameter("noidung");
			String tieude=request.getParameter("tieude");
			tinnhan tn=new tinnhan();
			tn.setManguoigui(manhan);
			tn.setManguoinhan(magui);
			tn.setNoidung(noidung);
			tn.setTieude(tieude);
			tn.guitn();
			out.print("<script>window.location.href='selectcbdktinnhan?mssv="+manhan+"';</script>");
		}
	}

}
