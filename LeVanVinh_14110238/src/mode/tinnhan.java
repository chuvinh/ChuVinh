package mode;

import java.sql.ResultSet;

import Conn.dbcon;

public class tinnhan {
	private String matn;
	private String manguoinhan;
	private String manguoigui;
	private String noidung;
	private String tieude;
	public tinnhan(String matn, String manguoinhan, String manguoigui,
			String noidung, String tieude) {
		super();
		this.matn = matn;
		this.manguoinhan = manguoinhan;
		this.manguoigui = manguoigui;
		this.noidung = noidung;
		this.tieude = tieude;
	}
	public String getMatn() {
		return matn;
	}
	public void setMatn(String matn) {
		this.matn = matn;
	}
	public String getManguoinhan() {
		return manguoinhan;
	}
	public void setManguoinhan(String manguoinhan) {
		this.manguoinhan = manguoinhan;
	}
	public String getManguoigui() {
		return manguoigui;
	}
	public void setManguoigui(String manguoigui) {
		this.manguoigui = manguoigui;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public String getTieude() {
		return tieude;
	}
	public void setTieude(String tieude) {
		this.tieude = tieude;
	}
	public tinnhan() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ResultSet listtn(){
		String sql="select * from tinnhan where MaNguoiNhan='"+getManguoinhan()+"'";
		ResultSet rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public boolean guitn(){
		String sql="insert into tinnhan(MaNguoiGui,MaNguoiNhan,NoiDung,TieuDe) values('"+getManguoigui()+"','"+getManguoinhan()+"','"+getNoidung()+"','"+getTieude()+"')";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
			return true;
		return false;
	}
	
}
