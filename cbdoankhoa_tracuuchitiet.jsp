<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	  .carousel-inner > .item > img,
	  .carousel-inner > .item > a > img {
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
		<div class="menu_tab">
			<ul class="nav nav-pills nav-justified">
				<li class="active"><a href="cbdoankhoa_login.jsp">Trang chủ</a></li>
			  	<li class="active"><a href="cbdoankhoa_thongbao.jsp">Thông báo</a></li>
			  	<li class="active"><a href="cbdoankhoa_hoatdong.jsp">Hoạt động</a></li>
			  	<li class="active"><a href="cbdoankhoa_tracuu.jsp">Tra cứu</a></li>
			  	<li class="active"><a href="cbdoankhoa_tinnhan.jsp">Tin nhắn</a></li>
			  	<li class="active"><a href="trangchu.jsp">Đăng xuất</a></li>
			</ul>
		</div>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
			 	<li class="active"><a data-toggle="tab" href="#dsdoanvien">Danh sách đoàn viên</a></li>
			</ul>
			<div class="tab-content">
			 	<div id="dsdoanvien" class="tab-pane fade in active">
					<div class="col-md-12">
						MSSV: 14110238<br>
						Tên đoàn viên: Lê Văn Vịnh<br>
						Năm sinh: 15/03/1996<br>
						Giới tính: Nam<br>
						CMND: 221421105<br>
						Email: 14110238@student.hcmute.edu.vn<br>
						SĐT: 01685699420<br>
						Khoa: Công nghệ thông tin<br>
						Lớp: 141101C<br>
						Ngày vào đoàn: 2013<br>
						Địa chỉ: Lê Văn Việt, Quận 9, TP.Hcm<br>
					</div>
			 	</div>
			</div>
		</div>
	</div>
</body>
</html>