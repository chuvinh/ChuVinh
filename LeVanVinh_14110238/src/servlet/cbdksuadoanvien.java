package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mode.doanvien;

/**
 * Servlet implementation class cbdksuadoanvien
 */
@WebServlet("/cbdksuadoanvien")
public class cbdksuadoanvien extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public cbdksuadoanvien() {
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
		doanvien dv=new doanvien();
		dv.setMssv(mssv);
		dv.setPass(pass);;
		dv.setMacd(macd);
		dv.setTen(tendv);;
		dv.setNgaysinh(ngaysinh);
		dv.setEmail(email);
		dv.setSdt(sdt);
		dv.setNgayvaodoan(ngayvaodoan);
		dv.setGioitinh(gioitinh);
		dv.setCmnd(cmnd);
		dv.setQuequan(quequan);
		dv.setTongiao(tongiao);
		dv.setDantoc(dantoc);
		dv.setDiachi(diachi);
		dv.updatedv();
		out.print("<script>window.location.href='selectcbdkdv'</script>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
