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
 * Servlet implementation class huydk
 */
@WebServlet("/huydk")
public class huydk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public huydk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String mahd=request.getParameter("mahd");
		String mssv=request.getParameter("mssv");
		dkhoatdong dk=new dkhoatdong();
		dk.setMahd(mahd);
		dk.setMssv(mssv);
		if(dk.huydk())
			out.print("<script>window.location.href='selecthddk?mssv="+request.getParameter("mssv")+"'</script>");
		else
			out.print("<script>window.location.href='selecthddk?mssv="+request.getParameter("mssv")+"'</script>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
