package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mode.hoatdong;

/**
 * Servlet implementation class suahd
 */
@WebServlet("/suahd")
public class suahd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suahd() {
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
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		if(request.getParameter("dk")!=null){
			String mahd=request.getParameter("mahd");
			String tenhd=request.getParameter("tenhd");
			String ngaybatdau=request.getParameter("ngaybatdau");
			String ngayketthuc=request.getParameter("ngayketthuc");
			String diadiem=request.getParameter("diadiem");
			String diemrl=request.getParameter("diemrl");
			String diemctxh=request.getParameter("diemctxh");
			String noidung=request.getParameter("noidung");
			hoatdong hd=new hoatdong();
			hd.setMaHD(mahd);
			hd.setTenHD(tenhd);
			hd.setThoiGianBatDau(ngaybatdau);
			hd.setThoiGianKetThuc(ngayketthuc);
			hd.setDiaDiem(diadiem);
			hd.setDiemRL(diemrl);
			hd.setDiemCTXH(diemctxh);
			hd.setNoiDung(noidung);
			hd.suahd();
			out.print("<script>window.location.href='selectcbdkhd';</script>");
		}
	}

}
