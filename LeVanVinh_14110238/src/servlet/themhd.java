package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mode.hoatdong;

/**
 * Servlet implementation class themhd
 */
@WebServlet("/themhd")
public class themhd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themhd() {
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
		if(request.getParameter("themhd")!=null){
			String tenhd=request.getParameter("tenhd");
			String ngaybatdau=request.getParameter("ngaybatdau");
			String ngayketthuc=request.getParameter("ngaybatdau");
			String diadiem=request.getParameter("diadiem");
			String diemrl=request.getParameter("diemrl");
			String diemctxh=request.getParameter("diemctxh");
			String noidung=request.getParameter("noidung");
			hoatdong hd=new hoatdong();
			hd.setTenHD(tenhd);
			hd.setThoiGianBatDau(ngaybatdau);
			hd.setThoiGianKetThuc(ngayketthuc);
			hd.setDiaDiem(diadiem);
			hd.setDiemRL(diemrl);
			hd.setDiemCTXH(diemctxh);
			hd.setNoiDung(noidung);
			if(hd.themhd()){
				response.sendRedirect("selectcbdthd");
			}
			else
				response.sendRedirect("selectcbdthd");
		}
	}

}
