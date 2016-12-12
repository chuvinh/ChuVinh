package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mode.chidoan;
import mode.doanvien;

/**
 * Servlet implementation class themdv
 */
@WebServlet("/themdv")
public class themdv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public themdv() {
		super();
		// TODO Auto-generated constructor stub
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		if(request.getParameter("dk")!=null){
			String mssv=request.getParameter("mssv");
			String pass=request.getParameter("password");
			String macd=request.getParameter("tencd");
			String tendv=request.getParameter("tendv");
			String ngaysinh=request.getParameter("ngaysinh");
			String email=request.getParameter("email");
			String sdt=request.getParameter("sdt");
			String ngayvaodoan=request.getParameter("ngayvaodoan");
			String gioitinh=request.getParameter("gioitinh");
			String cmnd=request.getParameter("cmnd");
			String quequan=request.getParameter("quequan");
			String dantoc=request.getParameter("dantoc");
			String tongiao=request.getParameter("tongiao");
			String diachi=request.getParameter("diachi");
			doanvien cd=new doanvien();
			cd.setMssv(mssv);
			cd.setPass(pass);;
			cd.setMacd(macd);
			cd.setTen(tendv);;
			cd.setNgaysinh(ngaysinh);
			cd.setEmail(email);
			cd.setSdt(sdt);
			cd.setNgayvaodoan(ngayvaodoan);
			cd.setGioitinh(gioitinh);
			cd.setCmnd(cmnd);
			cd.setQuequan(quequan);
			cd.setTongiao(tongiao);
			cd.setDantoc(dantoc);
			cd.setDiachi(diachi);
			if(cd.adddv()){
				out.print("<script>window.location.href='listdoanvien'</script>");
			}
			else
				out.print("<script>window.location.href='listdoanvien'</script>");
		}
	}

}
