package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mode.dkhoatdong;


/**
 * Servlet implementation class dangkyhd
 */
@WebServlet("/dangkyhd")
public class dangkyhd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyhd() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		if(request.getParameter("dangky")!=null){
			String mahd=request.getParameter("mahd");
			String mssv=request.getParameter("mssv");
			dkhoatdong dk=new dkhoatdong();
			dk.setMahd(mahd);;
			dk.setMssv(mssv);
			if(dk.dkhd())
				out.print("<script>window.location.href='selecthoatdong';</script>");
			else
				out.print("<script>window.location.href='selecthoatdong';</script>");
		}
	}

}
