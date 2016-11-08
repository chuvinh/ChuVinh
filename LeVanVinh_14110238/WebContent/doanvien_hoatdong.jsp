<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		          <li><a href="doanvien_login.jsp">Trang chủ</a></li>
				  <li><a href="doanvien_xemthongbao.jsp">Thông báo</a></li>
				  <li class="active"><a href="doanvien_hoatdong.jsp">Hoạt động</a></li>
				  <li><a href="doanvien_tracuu.jsp">Tra cứu</a></li>
				  <li><a href="doanvien_tinnhan.jsp">Tin nhắn</a></li>
				  <li><a href="doanvien_xemdiem.jsp">Xem điểm</a></li>
				  <li><a href="thaoluan.jsp">Thảo luận</a></li>
				  <li><a href="trangchu.jsp">Đăng xuất</a></li>
		        </ul>
		    </div>
    	</nav>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
			  <li class="active"><a data-toggle="tab" href="#dshoatdong">Danh sách hoạt động</a></li>
			  <li ><a data-toggle="tab" href="#huyhoatdong">Hủy hoạt động</a></li>
			</ul>
			<div class="tab-content">
			  <div id="dshoatdong" class="tab-pane fade in active">
			  	<sql:query var="items" sql="SELECT TenHoatDong,ThoiGianBatDau,ThoiGianKetThuc,SoLuong,DiaDiem,DiemRL,DiemCTXH FROM hoatdong"/>
			  	<table class="table">
					<tr>
						<th>Tên hoạt động</th>
						<th>Ngày bắt đầu</th>
						<th>Ngày kết thúc</th>
						<th>Số lượng</th>
						<th>Địa điểm</th>
						<th>Điểm RL</th>
						<th>Điểm CTXH</th>
					</tr>
					<c:forEach var="row" items="">
						<tr>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
							<td><c:out value=""/></td>
						</tr>
					</c:forEach>
			  	</table>
			  	<div class="btnxemchitiett">
			  		<button class="btn btn-info" type="button" id="btnxemchitiet">Xem chi tiết</button>
			  	</div>
			  </div>
			  <div id="huyhoatdong" class="tab-pane fade ">
				  <sql:query var="items" sql="SELECT TenHoatDong,ThoiGianBatDau,ThoiGianKetThuc,SoLuong,DiaDiem,DiemRL,DiemCTXH FROM hoatdong"/>
				  	<table class="table">
						<tr>
							<th>Tên hoạt động</th>
							<th>Ngày bắt đầu</th>
							<th>Ngày kết thúc</th>
							<th>Số lượng</th>
							<th>Địa điểm</th>
							<th>Điểm RL</th>
							<th>Điểm CTXH</th>
						</tr>
						<c:forEach var="row" items="">
							<tr>
								<td><c:out value=""/></td>
								<td><c:out value=""/></td>
								<td><c:out value=""/></td>
								<td><c:out value=""/></td>
								<td><c:out value=""/></td>
								<td><c:out value=""/></td>
								<td><c:out value=""/></td>
							</tr>
						</c:forEach>
				  	</table>
			  	<div class="btnhuy">
			  		<button class="btn btn-info" type="button" id="btnShowModal_huydk" data-target="#loginModal">Hủy đăng ký</button>
			  	</div>
			  </div>
			</div>	
			</div>
	</div>
</body>
</html>