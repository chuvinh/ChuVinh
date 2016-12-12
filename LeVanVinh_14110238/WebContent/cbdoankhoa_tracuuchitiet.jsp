<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý hoạt động đoàn</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src="jquery/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	margin: auto;
}
</style>
</head>
<body>
	<div class="containt">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="images/logo_doanthanhnien.jpg" alt="ThanhNien1"
						width="483" height="345">
				</div>
				<div class="item">
					<img src="images/logo_doanthanhnien2.jpg" alt="ThanhNien2"
						width="460" height="345">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<% String mssv = session.getAttribute("username").toString(); %>
				<li><a href="cbdoankhoa_login.jsp">Trang chủ</a></li>
				<li><a href="selecttb">Thông báo</a></li>
				<li><a href="selectcbdkhd">Hoạt động</a></li>
				<li class="active"><a href="selectcbdkdv">Tra cứu</a></li>
				<li><a href="selectcbdktinnhan?mssv=<%=mssv%>">Tin nhắn</a></li>
				<%
						if(session.getAttribute("username")!=null && session.getAttribute("username")!="")
						{
							String user = session.getAttribute("Ten").toString();
					%>
				<li><a>Welcome, <%= user%></a></li>
				<%
						} 
					%>
				<li><a href="trangchu.jsp">Đăng xuất</a></li>
			</ul>
		</div>
		</nav>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#dsdoanvien">Danh
						sách đoàn viên</a></li>
			</ul>
			<div class="tab-content">
				<div id="dsdoanvien" class="tab-pane fade in active">
					<div class="col-md-12">
						<%
							ResultSet rs = (ResultSet) request.getAttribute("listngdung");
							while (rs.next()) {
						%>
						<table class="table">
							<tr>
								<th>MSSV</th>
								<td><%=rs.getString("MSSV")%></td>
							</tr>
							<tr>
								<th>Tên đoàn viên</th>
								<td><%=rs.getString("Ten")%></td>
							</tr>
							<tr>
								<th>Chi đoàn</th>
								<td><%=rs.getString("MaCD")%></td>
							</tr>
							<tr>
								<th>Ngày Sinh</th>
								<td><%=rs.getString("NgaySinh")%></td>
							</tr>
							<tr>
								<th>Email</th>
								<td><%=rs.getString("Email")%></td>
							</tr>
							<tr>
								<th>Số điện thoại</th>
								<td><%=rs.getString("Sdt")%></td>
							</tr>
							<tr>
								<th>Ngày vào đoàn</th>
								<td><%=rs.getString("NgayVaoDoan")%></td>
							</tr>
							<tr>
								<th>Giới tính</th>
								<td><%=rs.getString("GioiTinh")%></td>
							</tr>
							<tr>
								<th>CMND</th>
								<td><%=rs.getString("CMND")%></td>
							</tr>
							<tr>
								<th>Quê quán</th>
								<td><%=rs.getString("QueQuan")%></td>
							</tr>
							<tr>
								<th>Tôn giáo</th>
								<td><%=rs.getString("TonGiao")%></td>
							</tr>
							<tr>
								<th>Dân tộc</th>
								<td><%=rs.getString("DanToc")%></td>
							</tr>
							<tr>
								<th>Địa Chỉ</th>
								<td><%=rs.getString("DiaChi")%></td>
							</tr>

						</table>
						<a href="selectcbdkdv"><button
								class="btn btn-info">Quay về</button></a>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-p">Đoàn trường Đại học Sư Phạm Kỹ Thuật TP Hồ
			Chí Minh</div>
		<div class="footer-p" style="text-align: center;">Design by:
			Vịnh</div>
	</div>
</body>
</html>