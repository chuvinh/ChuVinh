<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	  .carousel-inner > .item > img,
	  .carousel-inner > .item > a > img {
	      margin: auto;
	  }
  	</style>
</head>
<body>
	<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3307/qlhdd" user="root" password="12345678"/>
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
		      <img src="images/logo_doanthanhnien.jpg" alt="ThanhNien1" width="483" height="345">
		    </div>
		    <div class="item">
		      <img src="images/logo_doanthanhnien2.jpg" alt="ThanhNien2" width="460" height="345">
		    </div>
		  </div>
		  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
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
			 	<li class="active"><a data-toggle="tab" href="#dsdoanvien">Danh sách đoàn viên</a></li>
			</ul>
			<div class="tab-content">
			 	<div id="dsdoanvien" class="tab-pane fade in active">
					  	<table class="table">
							<tr>
							<th>MSSV</th>
							<th>Tên Đoàn Viên</th>
							<th>Ngày Sinh</th>
							<th>Giới Tính</th>
							<th>Email</th>
							<th>Sdt</th>
							<th>Xử lý</th>
						</tr>
						<%
							ResultSet rs = (ResultSet) request.getAttribute("listdoanvien");
							while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString("MSSV")%></td>
							<td><%=rs.getString("Ten")%></td>
							<td><%=rs.getString("NgaySinh")%></td>
							<td><%=rs.getString("GioiTinh")%></td>
							<td><%=rs.getString("Email")%></td>
							<td><%=rs.getString("Sdt")%></td>
							<td><a href="cbdksua?mssv=<%= rs.getString("MSSV")%>">Sửa </a> |
								<a href="cbdkxemctdv?mssv=<%=rs.getString("MSSV")%>">Xem
									chi tiết</a></td>
						</tr>
						<%
							}
						%>
						</table>
					</div>
			 	</div>
			</div>
		</div>
	<div class="footer">
		<div class="footer-p">
			Đoàn trường Đại học Sư Phạm Kỹ Thuật TP Hồ Chí Minh
		</div>
		<div class="footer-p" style="text-align: center;">
			Design by: Vịnh
		</div>
	</div>
</body>
</html>