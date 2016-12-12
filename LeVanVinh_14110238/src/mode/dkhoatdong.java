package mode;

import java.sql.ResultSet;

import Conn.dbcon;

public class dkhoatdong {
	private String mahd;
	private String mssv;
	public dkhoatdong(String mahd, String mssv) {
		super();
		this.mahd = mahd;
		this.mssv = mssv;
	}
	public String getMahd() {
		return mahd;
	}
	public void setMahd(String mahd) {
		this.mahd = mahd;
	}
	public String getMssv() {
		return mssv;
	}
	public void setMssv(String mssv) {
		this.mssv = mssv;
	}
	public dkhoatdong() {
		super();
		// TODO Auto-generated constructor stub
	}
	public boolean dkhd(){
		String sql="insert into dangkyhd(MaHD,MSSV) values('"+getMahd()+"','"+getMssv()+"')";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
		{
			return true;
		}
		return false;
	}
	public boolean huydk(){
		String sql="delete from dangkyhd where MaHD='"+getMahd()+"'";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
		{
			return true;
		}
		return false;
	}
	public ResultSet selecthddadk(){
		String sql="select *  from hoatdong inner join dangkyhd on hoatdong.MaHD=dangkyhd.MaHD where dangkyhd.MSSV='"+getMssv()+"'";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public ResultSet selecdiem(){
		String sql="select hoatdong.MaHD,hoatdong.TenHD,hoatdong.DiemRL,hoatdong.DiemCTXH,hoatdong.NoiDung from hoatdong inner join dangkyhd on hoatdong.MaHD=dangkyhd.MaHD where dangkyhd.MSSV='"+getMssv()+"'";
		ResultSet  rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
}
