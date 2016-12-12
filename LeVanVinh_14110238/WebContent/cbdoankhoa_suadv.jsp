<%@page import="Conn.dbcon"%>
<%@page import="mode.doanvien"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="java.sql.ResultSet"%>

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
				<li class="active"><a data-toggle="tab" href="#xemtt_dv">Thông
						tin cá nhân</a></li>
			</ul>
			<div class="tab-content">
				<form role="form" id="contactform"
					action="cbdksuadoanvien">
					<div class="col-md-6">
						<%
							ResultSet rs = (ResultSet) request.getAttribute("listngdung");
							while (rs.next()) {
						%>
						<tr>
							<td><label>MSSV:</label></td>
							<td><input type="text" class="form-control" name="mssv"
								placeholder="Enter MSSV" readonly="readonly"
								value="<%=rs.getString("MSSV")%>" required></td>
						</tr>
						<tr>
							<td><label>Mật khẩu:</label></td>
							<td><input type="password" class="form-control"
								name="password" placeholder="Enter MSSV"
								value="<%=rs.getString("Pass")%>" required></td>
						</tr>
						<tr>
							<td><label>Mã chi đoàn:</label></td>
							<td><input type="text" class="form-control" name="tencd"
								placeholder="Enter MSSV" value="<%=rs.getString("MaCD")%>" required></td>
						</tr>
						<tr>
							<td><label>Tên đoàn viên:</label></td>
							<td><input type="text" class="form-control" name="tendv"
								placeholder="Enter Name" value="<%=rs.getString("Ten")%>" required></td>
						</tr>
						<tr>
							<td><label>Ngày sinh:</label></td>
							<td><input type="text" class="form-control" name="ngaysinh"
								placeholder="Enter BirthDay"
								value="<%=rs.getString("NgaySinh")%>" required></td>
						</tr>
						<tr>
							<td><label>Email:</label></td>
							<td><input type="text" class="form-control" name="email"
								placeholder="Enter Email" value="<%=rs.getString("Email")%>" required></td>
						</tr>
						<tr>
							<td><label>SĐT:</label></td>
							<td><input type="text" class="form-control" name="sdt"
								placeholder="Enter Phone Number"
								value="<%=rs.getString("Sdt")%>" required></td>
							<br>
						</tr>
					</div>
					<div class="col-md-6">
						<tr>
							<td><label>Ngày vào đoàn:</label></td>
							<td><input type="text" class="form-control"
								name="ngayvaodoan" placeholder="Enter Date"
								value="<%=rs.getString("NgayVaoDoan")%>" required></td>
						</tr>
						<tr>
							<td><label>Giới tính:</label></td>
							<td><input type="text" class="form-control" name="gioitinh"
								placeholder="Enter Sex" value="<%=rs.getString("GioiTinh")%>" required></td>
						</tr>
						<tr>
							<td><label>CMND: </label></td>
							<td><input type="text" class="form-control" name="cmnd"
								placeholder="Enter CMND" value="<%=rs.getString("CMND")%>" required></td>
						</tr>
						<tr>
							<td><label>Quê quán:</label></td>
							<td><input type="text" class="form-control" name="quequan"
								placeholder="Enter QueQuan" value="<%=rs.getString("QueQuan")%>" required></td>
						</tr>
						<tr>
							<td><label>Tôn giáo: </label></td>
							<td><input type="text" class="form-control" name="tongiao"
								placeholder="Enter TonGiao" value="<%=rs.getString("TonGiao")%>" required></td>
						</tr>
						<tr>
							<td><label>Dân tộc: </label></td>
							<td><input type="text" class="form-control" name="dantoc"
								placeholder="Enter DanToc" value="<%=rs.getString("DanToc")%>" required></td>
						</tr>
						<tr>
							<td><label>Địa chỉ: </label></td>
							<td><input type="text" class="form-control" name="diachi"
								placeholder="Enter Address" value="<%=rs.getString("DiaChi")%>" required></td>
							<br>
						</tr>
					</div>

					<br> <br>
					<button class="btn btn-info" type="submit">Sửa
						người dùng</button>
					<a href="selectcbdkdv"><button
							class="btn btn-info" type="button">Quay về</button></a>
					<%
						}
					%>
				</form>
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
			$("#btnShowModal_tracuu").click(function() {
				validateText("MSSV")
				validateText("namedv")
				validateText("ngaysinh")
				validateText("email")
				validateText("sdt")
				validateText("ngayvaodoan")
				validateText("gioitinh")
				validateText("CMND")
				validateText("quequan")
				validateText("tongiao")
				validateText("dantoc")
				validateText("diachi")
				if (!validateText("MSSV")) {
					return false;
				}
				if (!validateText("namedv")) {
					return false;
				}
				if (!validateText("ngaysinh")) {
					return false;
				}
				if (!validateText("email")) {
					return false;
				}
				if (!validateText("sdt")) {
					return false;
				}
				if (!validateText("ngayvaodoan")) {
					return false;
				}
				if (!validateText("gioitinh")) {
					return false;
				}
				if (!validateText("CMND")) {
					return false;
				}
				if (!validateText("quequan")) {
					return false;
				}
				if (!validateText("tongiao")) {
					return false;
				}
				if (!validateText("dantoc")) {
					return false;
				}
				if (!validateText("diachi")) {
					return false;
				}
			});
		});
	</script>
</body>
</html>