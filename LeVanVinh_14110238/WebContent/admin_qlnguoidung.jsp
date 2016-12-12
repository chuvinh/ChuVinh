<%@page import="java.sql.ResultSet"%>
<%@page import="mode.doanvien"%>
<%@page import="java.util.Vector"%>
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
					<li class="active"><a href="admin_qlnguoidung.jsp">Quản lý
							người dùng</a></li>
					<li><a href="trangchu.jsp">Đăng xuất</a></li>
				</ul>
			</div>
		</nav>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#dsnguoidung">Danh
						sách người dùng</a></li>
				<li><a data-toggle="tab" href="#themnguoidung">Thêm người
						dùng</a></li>
			</ul>
			<div class="tab-content">
				<div id="dsnguoidung" class="tab-pane fade in active">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th>Username</th>
								<th>Email</th>
								<th>Số điện thoại</th>
								<th></th>
							</tr>
							<% 
								ResultSet rs=(ResultSet)request.getAttribute("listdv");
								while(rs.next()){
							%>
							<tr>
								<td><%= rs.getString("MSSV") %></td>
								<td><%= rs.getString("Email")%></td>
								<td><%= rs.getString("Sdt")%></td>
								<td><a href="xoadoanvien?mssv=<%= rs.getString("MSSV")%>">Xóa</a></td>
							</tr>
							<%} %>
						</table>
					</div>
				</div>
				<div id="themnguoidung" class="tab-pane fade">
					<form method="post" action="themdv">
						<div class="col-md-6">
							<tr>
								<td><label>MSSV:</label></td>
								<td><input type="text" class="form-control" name="mssv"
									placeholder="Enter MSSV" required></td>
							</tr>
							<tr>
								<td><label>Mật khẩu:</label></td>
								<td><input type="password" class="form-control"
									name="password" placeholder="Enter MSSV" required></td>
							</tr>
							<tr>
								<td><label>Mã chi đoàn:</label></td>
								<td><input type="text" class="form-control" name="tencd"
									placeholder="Enter MSSV" required></td>
							</tr>
							<tr>
								<td><label>Tên đoàn viên:</label></td>
								<td><input type="text" class="form-control" name="tendv"
									placeholder="Enter Name" required></td>
							</tr>
							<tr>
								<td><label>Ngày sinh:</label></td>
								<td><input type="text" class="form-control" name="ngaysinh"
									placeholder="Enter BirthDay" required></td>
							</tr>
							<tr>
								<td><label>Email:</label></td>
								<td><input type="text" class="form-control" name="email"
									placeholder="Enter Email" required></td>
							</tr>
							<tr>
								<td><label>SĐT:</label></td>
								<td><input type="text" class="form-control" name="sdt"
									placeholder="Enter Phone Number" required></td>
								<br>
							</tr>
						</div>
						<div class="col-md-6">
							<tr>
								<td><label>Ngày vào đoàn:</label></td>
								<td><input type="text" class="form-control"
									name="ngayvaodoan" placeholder="Enter Date" required></td>
							</tr>
							<tr>
								<td><label>Giới tính:</label></td>
								<td><input type="text" class="form-control" name="gioitinh"
									placeholder="Enter Sex" required></td>
							</tr>
							<tr>
								<td><label>CMND: </label></td>
								<td><input type="text" class="form-control" name="cmnd"
									placeholder="Enter CMND" required></td>
							</tr>
							<tr>
								<td><label>Quê quán:</label></td>
								<td><input type="text" class="form-control" name="quequan"
									placeholder="Enter QueQuan" required></td>
							</tr>
							<tr>
								<td><label>Tôn giáo: </label></td>
								<td><input type="text" class="form-control" name="tongiao"
									placeholder="Enter TonGiao" required></td>
							</tr>
							<tr>
								<td><label>Dân tộc: </label></td>
								<td><input type="text" class="form-control" name="dantoc"
									placeholder="Enter DanToc" required></td>
							</tr>
							<tr>
								<td><label>Địa chỉ: </label></td>
								<td><input type="text" class="form-control" name="diachi"
									placeholder="Enter Address" required></td>
								<br>
							</tr>
						</div>
						<br> <br>
						<button class="btn btn-info" type="submit" name="dk">Thêm
							người dùng</button>
					</form>
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
			$("#btnShowModal_themnd").click(function() {
				validateText("t_MSSV")
				validateText("t_namend")
				validateText("t_ngaysinh")
				validateText("t_CMND")
				validateText("t_gioitinh")
				validateText("t_email")
				validateText("t_sdt")
				validateText("t_khoa")
				validateText("t_lop")
				validateText("t_ngayvaodoan")
				validateText("t_diachi")
				if (!validateText("t_MSSV")) {
					return false;
				}
				if (!validateText("t_namend")) {
					return false;
				}
				if (!validateText("t_ngaysinh")) {
					return false;
				}
				if (!validateText("t_CMND")) {
					return false;
				}
				if (!validateText("t_gioitinh")) {
					return false;
				}
				if (!validateText("t_email")) {
					return false;
				}
				if (!validateText("t_sdt")) {
					return false;
				}
				if (!validateText("t_khoa")) {
					return false;
				}
				if (!validateText("t_lop")) {
					return false;
				}
				if (!validateText("t_ngayvaodoan")) {
					return false;
				}
				if (!validateText("t_diachi")) {
					return false;
				}
			});
		});
	</script>
</body>
</html>