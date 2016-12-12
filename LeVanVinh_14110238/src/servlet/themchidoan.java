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
 * Servlet implementation class themchidoan
 */
@WebServlet("/themchidoan")
public class themchidoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themchidoan() {
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
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("dk")!=null){
			String tencd=request.getParameter("tencd");
			String khoa=request.getParameter("khoa");
			String tencb=request.getParameter("tencb");
			String sdt=request.getParameter("sdt");
			String email=request.getParameter("email");
			chidoan cd=new chidoan();
			cd.setTencd(tencd);
			cd.setTencb(tencb);
			cd.setSdt(sdt);
			cd.setEmail(email);
			cd.setKhoa(khoa);
			if(cd.addcd()){
				response.sendRedirect("selectchidoan");
			}
			else
				response.sendRedirect("selectchidoan");
		}
	}

}
