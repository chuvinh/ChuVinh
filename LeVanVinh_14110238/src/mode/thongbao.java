package mode;

import java.sql.ResultSet;

import Conn.dbcon;

public class thongbao {
	private String matb;
	private String noidung;
	private String tieude;
	public thongbao(String matb, String noidung, String tieude) {
		super();
		this.matb = matb;
		this.noidung = noidung;
		this.tieude = tieude;
	}
	public String getMatb() {
		return matb;
	}
	public void setMatb(String matb) {
		this.matb = matb;
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
	public thongbao() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ResultSet getlisttb(){
		String sql="select * from thongbao";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public ResultSet xemtb(){
		String sql="select * from thongbao where MaTB='"+getMatb()+"'";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public boolean themtb(){
		String sql="insert into thongbao(NoiDung,TieuDe) values('"+getNoidung()+"','"+getTieude()+"')";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
			return true;
		return false;
	}
	public boolean xoatb(){
		String sql="delete from thongbao where MaTB='"+getMatb()+"'";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
			return true;
		return false;
	}
	
}
