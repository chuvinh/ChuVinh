package mode;

import java.sql.ResultSet;

import Conn.dbcon;

public class chidoan {
	private String macd;
	private String tencd;
	private String tencb;
	private String sdt;
	private String email;
	private String khoa;
	public chidoan(String macd, String tencd, String tencb, String sdt,
			String email, String khoa) {
		super();
		this.macd = macd;
		this.tencd = tencd;
		this.tencb = tencb;
		this.sdt = sdt;
		this.email = email;
		this.khoa = khoa;
	}
	public String getMacd() {
		return macd;
	}
	public void setMacd(String macd) {
		this.macd = macd;
	}
	public String getTencd() {
		return tencd;
	}
	public void setTencd(String tencd) {
		this.tencd = tencd;
	}
	public String getTencb() {
		return tencb;
	}
	public void setTencb(String tencb) {
		this.tencb = tencb;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getKhoa() {
		return khoa;
	}
	public void setKhoa(String khoa) {
		this.khoa = khoa;
	}
	public chidoan() {
		super();
		// TODO Auto-generated constructor stub
	}
	public boolean addcd(){
		String sql="insert into chidoan(TenCD,TenCDB,Sdt,Email,Khoa) values (N'"+getTencd()+"','"+getTencd()+"','"+getSdt()+"','"+getEmail()+"','"+getKhoa()+"')";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql)){
			return true;
		}
		return false;
	}
	public boolean suacd(){
		String sql="update chidoan set TenCD='"+getTencd()+"',TenCDB='"+getTencb()+"',Sdt="+getSdt()+",Email='"+getEmail()+"',Khoa='"+getKhoa()+"' where MaCD='"+getMacd()+"'";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql)){
			return true;
		}
		return false;
	}
	public ResultSet selectcd(){
		String sql="select * from chidoan";
		ResultSet rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public ResultSet selectcds(){
		String sql="select * from chidoan where MaCD='"+getMacd()+"'";
		ResultSet rs=null;
		dbcon dbc=new dbcon();
		rs=dbc.getList(sql);
		return rs;
	}
	public boolean xoacd(){
		String sql="delete from chidoan where MaCD='"+getMacd()+"'";
		dbcon dbc=new dbcon();
		if(dbc.Add_update(sql))
			return true;
		return false;
	}
}
