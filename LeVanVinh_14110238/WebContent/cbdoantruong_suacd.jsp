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
						String mssv = session.getAttribute("username").toString();
						if (session.getAttribute("username") != null
								&& session.getAttribute("username") != "") {
							String user = session.getAttribute("Ten").toString();
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
				<li class="active"><a data-toggle="tab" href="#dschidoan">Sửa
						chi đoàn</a></li>
			</ul>
			<div class="tab-content">
				<div id="themchidoan" class="tab-pane fade in active">
					<div class="col-md-4">
						<%
							ResultSet rs = (ResultSet) request.getAttribute("listcd");
							while (rs.next()) {
						%>
						<form method="post"
							action="suachidoan?macd=<%=rs.getString("MaCD")%>">
							<div class="form-group">
								<label>Tên chi đoàn:</label> <input type="text" name="tencd"
									class="form-control" id="t_namecd" required
									placeholder="Nhập vào tên chi đoàn"
									value="<%=rs.getString("TenCD")%>">
							</div>
							<div class="form-group">
								<label>Tên cán bộ đoàn:</label> <input type="text" name="tencb"
									class="form-control" id="t_namecbd" required
									placeholder="Nhập vào tên cán bộ đoàn"
									value="<%=rs.getString("TenCDB")%>">
							</div>
							<div class="form-group">
								<label>Số điện thoại:</label> <input type="text" name="sdt"
									class="form-control" id="t_sdt" required
									placeholder="Nhập vào số điện thoại"
									value="<%=rs.getString("Sdt")%>">
							</div>
							<div class="form-group">
								<label>Email:</label> <input type="text" class="form-control"
									name="email" id="t_email" placeholder="Nhập vào Email" required
									value="<%=rs.getString("Email")%>">
							</div>
							<div class="form-group">
								<label>Khoa:</label> <input type="text" class="form-control"
									name="khoa" id="t_khoa" placeholder="Nhập vào khoa" required
									value="<%=rs.getString("Khoa")%>">
							</div>
							<button class="btn btn-info" type="submit" name="dk"
								id="btnShowModal_themcd">Sửa chi đoàn</button>

						</form>
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