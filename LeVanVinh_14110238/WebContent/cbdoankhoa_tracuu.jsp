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
		          	<li><a href="cbdoankhoa_login.jsp">Trang chủ</a></li>
					<li><a href="cbdoankhoa_thongbao.jsp">Thông báo</a></li>
					<li><a href="cbdoankhoa_hoatdong.jsp">Hoạt động</a></li>
					<li class="active"><a href="cbdoankhoa_tracuu.jsp">Tra cứu</a></li>
					<li><a href="cbdoankhoa_tinnhan.jsp">Tin nhắn</a></li>
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
					<sql:query var="items" sql="SELECT MSSV,TenDV,NgaySinh,GioiTinh,Email,Sdt FROM doanvien inner join chucvu on chucvu.MaChucVu=doanvien.MaChucVu"/>
					  	<table class="table">
							<tr>
								<th>MSSV</th>
								<th>Tên Đoàn Viên</th>
								<th>Ngày Sinh</th>
								<th>Giới Tính<th>
								<th>Email</th>
								<th>Sdt</th>
							</tr>
							<c:forEach var="row" items="">
								<tr>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
								</tr>
							</c:forEach>
						</table>
						 <a href="cbdoankhoa_tracuuchitiet.jsp"><button class="btn btn-info" type="button" id="btnShowModal_xemct">Xem chi tiết</button></a>
					</div>
			 	</div>
			</div>
		</div>

</body>
</html>