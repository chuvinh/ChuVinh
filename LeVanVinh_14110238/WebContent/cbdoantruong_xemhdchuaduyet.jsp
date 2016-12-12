<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3307/qlhdd" user="root"
		password="12345678" />
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
					<li class="active"><a href="cbdoantruong_login.jsp">Trang
							chủ</a></li>
					<li><a href="selectcbdthd">Quản lý hoạt động</a></li>
					<li><a href="selectchidoan">Quản lý chi đoàn</a></li>
					<%
						if (session.getAttribute("username") != null
								&& session.getAttribute("username") != "") {
							String user = session.getAttribute("username").toString();
					%>
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
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th>Tên hoạt động</th>
								<th>Ngày bắt đầu</th>
								<th>Ngày kết thúc</th>
								<th>Địa điểm</th>
								<th>Điểm RL</th>
								<th>Điểm CTXH</th>
								<th>Nội dung</th>
								<th>Trạng Thái</th>
								<th></th>
							</tr>
							<%
								ResultSet rs = (ResultSet) request.getAttribute("listhd");
								while (rs.next()) {
									PrintWriter a = response.getWriter();
									int s = rs.getInt("TrangThai");
									String b;
									if (s == 1)
										b = "Đã duyệt";
									else
										b = "Chưa duyệt";
							%>
							<tr>
								<td><%=rs.getString("TenHD")%></td>
								<td><%=rs.getString("ThoiGianBatDau")%></td>
								<td><%=rs.getString("ThoiGianKetThuc")%></td>
								<td><%=rs.getString("DiaDiem")%></td>
								<td><%=rs.getString("DiemRL")%></td>
								<td><%=rs.getString("DiemCTXH")%></td>
								<td><%=rs.getString("NoiDung")%></td>
								<td><%=b%></td>
								<td><a href="duyethoatdong?mahd=<%= rs.getString("MaHD")%>"><button class="btn btn-info"
											type="submit">Duyệt</button></a> | <a href="xoahd?mahd=<%= rs.getString("MaHD")%>"><button
											class="btn btn-info" type="submit">Xóa</button></a></td>
							</tr>
							<%
								}
							%>
						</table>
						<div class="btnxemct">
							<a href="selectcbdthd"><button
									class="btn btn-info" type="button" id="btnShowModal_xemcthd">Trở về</button></a>
						</div>
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