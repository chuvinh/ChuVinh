<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
				<li class="active"><a href="doanvien_login.jsp">Trang chủ</a></li>
				<li><a href="selectthongbao">Thông báo</a></li>
				<li><a href="selecthoatdong">Hoạt động</a></li>
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
				<li class="active"><a data-toggle="tab" href="#diemrl">Xem
						điểm</a></li>
			</ul>
			<div class="tab-content">
				<div id="diemrl" class="tab-pane fade in active">
					<div class="col-md-12">
						<table class="table">
							<h3>Các hoạt động đã tham gia</h3>
							
							<tr>
								<th>Mã hoạt động</th>
								<th>Tên hoạt động</th>
								<th>Điểm rèn luyện</th>
								<th>Điểm CTXH</th>
								<th>Nội dung</th>
							</tr>
							<%
								ResultSet rs = (ResultSet) request.getAttribute("listd");
								int drl,dctxh,rl=0,ctxh=0;
								while (rs.next()) {
									drl=rs.getInt("DiemRL");
									rl+=drl;
									dctxh=rs.getInt("DiemCTXH");
									ctxh+=dctxh;
									
							%>
							<tr>
								<td><%=rs.getString("MaHD")%></td>
								<td><%=rs.getString("TenHD")%></td>
								<td><%=rs.getString("DiemRL")%></td>
								<td><%=rs.getString("DiemCTXH")%></td>
								<td><%=rs.getString("NoiDung")%></td>
							</tr>
							<%
								}
							%>
							<div>
								<label>Điểm rèn luyện đã tổng kết: <%= rl%>, Điểm CTXH đã tổng
									kết: <%= ctxh %></label>
							</div>
						</table>
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