<%@page import="java.sql.ResultSet"%>
<%@page import="Conn.dbcon"%>
<%@page import="mode.hoatdong"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý hoạt động đoàn</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="jquery/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<link href="css/style.css" rel="stylesheet">
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
					<%
						if (session.getAttribute("username") != null
								&& session.getAttribute("username") != "") {
							String user = session.getAttribute("Ten").toString();
							String mssv = session.getAttribute("username").toString();
					%>
					<li><a href="doanvien_login.jsp">Trang chủ</a></li>
					<li><a href="selectthongbao">Thông báo</a></li>
					<li class="active"><a href="selecthoatdong">Hoạt động</a></li>
					<li><a href="selectdoanvien?mssv=<%=mssv%>">Tra cứu</a></li>
					<li><a href="selecttinnhan?mssv=<%=mssv%>">Tin nhắn</a></li>
					<li><a href="xemdiem?mssv=<%=mssv%>">Xem điểm</a></li>

					<li><a>Welcome, <%=user%></a></li>
					<%
						}
					%>
					<li><a href="trangchu.jsp">Đăng xuất</a></li>
				</ul>
			</div>
		</nav>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#dshoatdong">Danh
						sách hoạt động</a></li>
			</ul>
			<div class="tab-content">
				<div id="dshoatdong" class="tab-pane fade in active">
					<%
						String mssv = session.getAttribute("username").toString();
						ResultSet rs = (ResultSet) request.getAttribute("listhd");
						while (rs.next()) {
					%>
					<form method="post"
						action="dangkyhd?mahd=<%=rs.getString("MaHD")%>&mssv=<%=mssv%>">
						<table class="table">
							<tr>
								<th>Mã Hoạt động</th>
								<td><%=rs.getString("MaHD")%></td>
							</tr>
							<tr>
								<th>Tên hoạt động</th>
								<td><%=rs.getString("TenHD")%></td>
							</tr>
							<tr>
								<th>Ngày bắt đầu</th>
								<td><%=rs.getString("ThoiGianBatDau")%></td>
							</tr>
							<tr>
								<th>Ngày kết thúc</th>
								<td><%=rs.getString("ThoiGianKetThuc")%></td>
							</tr>
							<tr>
								<th>Địa điểm</th>
								<td><%=rs.getString("DiaDiem")%></td>
							</tr>
							<tr>
								<th>Điểm rèn luyện</th>
								<td><%=rs.getString("DiemRL")%></td>
							</tr>
							<tr>
								<th>Điểm CTXH</th>
								<td><%=rs.getString("DiemCTXH")%></td>
							</tr>
							<tr>
								<th>Nội dung</th>
								<td><%=rs.getString("NoiDung")%></td>
							</tr>
						</table>
						<button class="btn btn-info" type="submit" name="dangky">Đăng
							ký</button>
						<a href="selecthoatdong"><button class="btn btn-info"
								type="button">Quay về</button></a>
					</form>
					<%
						}
					%>
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