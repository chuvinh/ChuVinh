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
				<li class="active"><a data-toggle="tab" href="#dschidoan">Danh
						sách chi đoàn</a></li>
				<li><a data-toggle="tab" href="#themchidoan">Thêm chi đoàn</a></li>
			</ul>
			<div class="tab-content">
				<div id="dschidoan" class="tab-pane fade in active">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th>Mã chi đoàn</th>
								<th>Tên chi đoàn</th>
								<th>Tên cán bộ</th>
								<th>Số điện thoại</th>
								<th>Email</th>
								<th>Khoa</th>
								<th></th>
							</tr>
							<%
								ResultSet rs = (ResultSet) request.getAttribute("listcd");
								while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getString("MaCD")%></td>
								<td><%=rs.getString("TenCD")%></td>
								<td><%=rs.getString("TenCDB")%></td>
								<td><%=rs.getString("Sdt")%></td>
								<td><%=rs.getString("Email")%></td>
								<td><%=rs.getString("Khoa")%></td>
								<td><a href="suacd?macd=<%=rs.getString("MaCD")%>"><button class="btn btn-info"
											type="button">Sửa</button></a> <a href="xoachidoan?macd=<%= rs.getString("MaCD")%>"><button
											class="btn btn-info" type="button">Xóa</button></a></td>
							</tr>
							<%
								}
							%>
						</table>
					</div>
				</div>
				<div id="themchidoan" class="tab-pane fade">
					<div class="col-md-4">
						<form method="post" action="themchidoan">
							<div class="form-group">
								<label>Tên chi đoàn:</label> <input type="text" name="tencd" required
									class="form-control" id="t_namecd" placeholder="Enter Name">
							</div>
							<div class="form-group">
								<label>Tên cán bộ đoàn:</label> <input type="text" name="tencb" required
									class="form-control" id="t_namecbd" placeholder="Enter Name">
							</div>
							<div class="form-group">
								<label>Số điện thoại:</label> <input type="text" name="sdt" required
									class="form-control" id="t_sdt"
									placeholder="Enter Phone Number">
							</div>
							<div class="form-group">
								<label>Email:</label> <input type="text" class="form-control" required
									name="email" id="t_email" placeholder="Enter Email">
							</div>
							<div class="form-group">
								<label>Khoa:</label> <input type="text" class="form-control" required
									name="khoa" id="t_khoa" placeholder="Enter Email">
							</div>
							<button class="btn btn-info" type="submit" name="dk"
								id="btnShowModal_themcd">Thêm chi đoàn</button>
						</form>
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
	<script type="text/javascript">
		function validateText(id) {
			if ($("#" + id).val() == null || $("#" + id).val() == "") {
				var div = $("#" + id).closest("div");
				div.removeClass("has-error");
				$("#glypcn" + id).remove();
				div.addClass("has-error has-feedback");
				div
						.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-remove form-control-feedback"></span>');
				return false;
			} else {
				var div = $("#" + id).closest("div");
				div.removeClass("has-error");
				div.addClass("has-succes has-feedback");
				$("#glypcn" + id).remove();
				div
						.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-ok form-control-feedback"></span>');
				return true;
			}
		}
		$(document).ready(function() {
			$("#btnShowModal_themcd").click(function() {
				validateText("t_namecd")
				validateText("t_namecbd")
				validateText("t_sdt")
				validateText("t_email")
				validateText("t_khoa")
				if (!validateText("t_namecd")) {
					return false;
				}
				if (!validateText("t_namecbd")) {
					return false;
				}
				if (!validateText("t_sdt")) {
					return false;
				}
				if (!validateText("t_email")) {
					return false;
				}
				if (!validateText("t_khoa")) {
					return false;
				}
			});
		});
	</script>
</body>
</html>