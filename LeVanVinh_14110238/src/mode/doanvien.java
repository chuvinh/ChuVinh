package mode;

import java.sql.ResultSet;
import java.util.Vector;

import Conn.dbcon;

public class doanvien {
	private String mssv;
	private String pass;
	private String macd;
	private String ten;
	private String ngaysinh;
	private String email;
	private String sdt;
	private String ngayvaodoan;
	private String gioitinh;
	private String cmnd;
	private String quequan;
	private String tongiao;
	private String dantoc;
	private String diachi;
	private String roleid;
	
	public doanvien(String mssv, String pass, String macd, String ten,
			String ngaysinh, String email, String sdt, String ngayvaodoan,
			String gioitinh, String cmnd, String quequan, String tongiao,
			String dantoc, String diachi, String roleid) {
		super();
		this.mssv = mssv;
		this.pass = pass;
		this.macd = macd;
		this.ten = ten;
		this.ngaysinh = ngaysinh;
		this.email = email;
		this.sdt = sdt;
		this.ngayvaodoan = ngayvaodoan;
		this.gioitinh = gioitinh;
		this.cmnd = cmnd;
		this.quequan = quequan;
		this.tongiao = tongiao;
		this.dantoc = dantoc;
		this.diachi = diachi;
		this.roleid = roleid;
	}

	public String getMssv() {
		return mssv;
	}

	public void setMssv(String mssv) {
		this.mssv = mssv;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getMacd() {
		return macd;
	}

	public void setMacd(String macd) {
		this.macd = macd;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getNgayvaodoan() {
		return ngayvaodoan;
	}

	public void setNgayvaodoan(String ngayvaodoan) {
		this.ngayvaodoan = ngayvaodoan;
	}

	public String getGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}

	public String getCmnd() {
		return cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	public String getQuequan() {
		return quequan;
	}

	public void setQuequan(String quequan) {
		this.quequan = quequan;
	}

	public String getTongiao() {
		return tongiao;
	}

	public void setTongiao(String tongiao) {
		this.tongiao = tongiao;
	}

	public String getDantoc() {
		return dantoc;
	}

	public void setDantoc(String dantoc) {
		this.dantoc = dantoc;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getRoleid() {
		return roleid;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}

	public doanvien() {
		super();
		// TODO Auto-generated constructor stub
	}

	public boolean adddv(){
		String sql="insert into doanvien(MSSV,Pass,MaCd,Ten,NgaySinh,Email,Sdt,NgayVaoDoan,GioiTinh,CMND,QueQuan,TonGiao,DanToc,DiaChi,Roleid) values (N'"+getMssv()+"','"+getPass()+"','"+getMacd()+"','"+getTen()+"','"+getNgaysinh()+"','"+getEmail()+"','"+getSdt()+"','"+getNgayvaodoan()+"','"+getGioitinh()+"','"+getCmnd()+"','"+getQuequan()+"','"+getTongiao()+"','"+getDantoc()+"','"+getDiachi()+"','dv')";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql)){
			return true;
		}
		return false;
	}
	public boolean deletedv(){
		String sql="delete from doanvien where MSSV='"+getMssv()+"'";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql)){
			return true;
		}
		return false;
	}
	public ResultSet ListDV(){
		String sql="select MSSV,Email,Sdt from doanvien";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public ResultSet selectdv(){
		String sql="select * from doanvien where MSSV='"+getMssv()+"'";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public boolean updatedv(){
		String sql="update doanvien set Pass='"+getPass()+"',MaCd='"+getMacd()+"',Ten='"+getTen()+"',NgaySinh='"+getNgaysinh()+"',Email='"+getEmail()+"',Sdt='"+getSdt()+"',NgayVaoDoan='"+getNgaysinh()+"',GioiTinh='"+getGioitinh()+"',CMND='"+getCmnd()+"',QueQuan='"+getQuequan()+"',TonGiao='"+getTongiao()+"',DanToc='"+getDantoc()+"',DiaChi='"+getDiachi()+"' where MSSV='"+getMssv()+"'";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql)){
			return true;
		}
		return false;
	}
	public ResultSet cbdkdv(){
		String sql="select * from doanvien where Roleid='dv'";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
}
