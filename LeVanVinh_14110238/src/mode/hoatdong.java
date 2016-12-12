package mode;

import java.sql.ResultSet;

import Conn.dbcon;

public class hoatdong {
	private String MaHD;
	private String TenHD;
	private String ThoiGianBatDau;
	private String ThoiGianKetThuc;
	private String DiaDiem;
	private String DiemRL;
	private String DiemCTXH;
	private String NoiDung;
	private String MaHK;
	private String TrangThai;
	public hoatdong(String maHD, String tenHD, String thoiGianBatDau,
			String thoiGianKetThuc, String diaDiem, String diemRL,
			String diemCTXH, String noiDung, String maHK, String trangThai) {
		super();
		MaHD = maHD;
		TenHD = tenHD;
		ThoiGianBatDau = thoiGianBatDau;
		ThoiGianKetThuc = thoiGianKetThuc;
		DiaDiem = diaDiem;
		DiemRL = diemRL;
		DiemCTXH = diemCTXH;
		NoiDung = noiDung;
		MaHK = maHK;
		TrangThai = trangThai;
	}
	public String getMaHD() {
		return MaHD;
	}
	public void setMaHD(String maHD) {
		MaHD = maHD;
	}
	public String getTenHD() {
		return TenHD;
	}
	public void setTenHD(String tenHD) {
		TenHD = tenHD;
	}
	public String getThoiGianBatDau() {
		return ThoiGianBatDau;
	}
	public void setThoiGianBatDau(String thoiGianBatDau) {
		ThoiGianBatDau = thoiGianBatDau;
	}
	public String getThoiGianKetThuc() {
		return ThoiGianKetThuc;
	}
	public void setThoiGianKetThuc(String thoiGianKetThuc) {
		ThoiGianKetThuc = thoiGianKetThuc;
	}
	public String getDiaDiem() {
		return DiaDiem;
	}
	public void setDiaDiem(String diaDiem) {
		DiaDiem = diaDiem;
	}
	public String getDiemRL() {
		return DiemRL;
	}
	public void setDiemRL(String diemRL) {
		DiemRL = diemRL;
	}
	public String getDiemCTXH() {
		return DiemCTXH;
	}
	public void setDiemCTXH(String diemCTXH) {
		DiemCTXH = diemCTXH;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public String getMaHK() {
		return MaHK;
	}
	public void setMaHK(String maHK) {
		MaHK = maHK;
	}
	public String getTrangThai() {
		return TrangThai;
	}
	public void setTrangThai(String trangThai) {
		TrangThai = trangThai;
	}
	
	public hoatdong() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ResultSet getList(){
		String sql="select * from hoatdong where trangthai=1";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public ResultSet selecthd(){
		String sql="select * from hoatdong where MaHD='"+getMaHD()+"'";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public ResultSet getListhd(){
		String sql="select * from hoatdong";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public boolean themhd(){
		String sql="insert into hoatdong(TenHD,ThoiGianBatDau,ThoiGianKetThuc,DiaDiem,DiemRL,DiemCTXH,NoiDung,MaHK,TrangThai) values('"+getTenHD()+"','"+getThoiGianBatDau()+"','"+getThoiGianKetThuc()+"','"+getDiaDiem()+"','"+getDiemRL()+"','"+getDiemCTXH()+"','"+getNoiDung()+"','1','1')";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
			return true;
		return false;
	}
	public boolean themhdcbdk(){
		String sql="insert into hoatdong(TenHD,ThoiGianBatDau,ThoiGianKetThuc,DiaDiem,DiemRL,DiemCTXH,NoiDung,MaHK,TrangThai) values('"+getTenHD()+"','"+getThoiGianBatDau()+"','"+getThoiGianKetThuc()+"','"+getDiaDiem()+"','"+getDiemRL()+"','"+getDiemCTXH()+"','"+getNoiDung()+"','1','0')";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
			return true;
		return false;
	}
	public ResultSet getListhdchuaduyet(){
		String sql="select * from hoatdong where trangthai=0";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public boolean duyethd(){
		String sql="update hoatdong set TrangThai='1' where MaHD='"+getMaHD()+"'";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
			return true;
		return false;
	}
	public boolean xoahd(){
		String sql="delete from hoatdong where MaHD='"+getMaHD()+"'";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
			return true;
		return false;
	}
	public boolean suahd(){
		String sql="update hoatdong set TenHD='"+getTenHD()+"',ThoiGianBatDau='"+getThoiGianBatDau()+"',ThoiGianKetThuc='"+getThoiGianKetThuc()+"', DiaDiem='"+getDiaDiem()+"',DiemRL='"+getDiemRL()+"',DiemCTXH='"+getDiemCTXH()+"', NoiDung='"+getNoiDung()+"' where MaHD='"+getMaHD()+"'";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
			return true;
		return false;
	}

}
