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
			  <li class="active"><a href="doanvien_login.jsp">Trang chủ</a></li>
			  <li class="active"><a href="doanvien_xemthongbao.jsp">Thông báo</a></li>
			  <li class="active"><a href="doanvien_hoatdong.jsp">Hoạt động</a></li>
			  <li class="active"><a href="doanvien_tracuu.jsp">Tra cứu</a></li>
			  <li class="active"><a href="doanvien_tinnhan.jsp">Tin nhắn</a></li>
			  <li class="active"><a href="doanvien_xemdiem.jsp">Xem điểm</a></li>
			  <li class="active"><a href="trangchu.jsp">Đăng xuất</a></li>
			</ul>
		</div>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
			  <li class="active"><a data-toggle="tab" href="#dshoatdong">Danh sách hoạt động</a></li>
			  <li ><a data-toggle="tab" href="#dkhoatdong">Đăng ký hoạt động</a></li>
			  <li ><a data-toggle="tab" href="#huyhoatdong">Hủy hoạt động</a></li>
			</ul>
			<div class="tab-content">
			  <div id="dshoatdong" class="tab-pane fade in active">
			  	<table class="table">
					<tr>
						<th>STT</th>
						<th>Tên hoạt động</th>
						<th>Ngày bắt đầu</th>
						<th>Ngày kết thúc</th>
						<th>Số lượng</th>
						<th>Điểm rèn luyện</th>
						<th>Điểm CTXH</th>
					</tr>
					<tr>
						<td>1</td>
						<td>Vệ sinh trường</td>
						<td>20/10/2016</td>
						<td>25/10/2016</td>
						<td>60</td>
						<td>5</td>
						<td>5</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Chủ nhật xanh</td>
						<td>22/11/2016</td>
						<td>22/11/2016</td>
						<td>120</td>
						<td>5</td>
						<td>5</td>
					</tr>
			  	</table>
			  </div>
			  <div id="dkhoatdong" class="tab-pane fade ">
			  	<table class="table">
					<tr>
						<th></th>
						<th>STT</th>
						<th>Tên hoạt động</th>
						<th>Ngày bắt đầu</th>
						<th>Ngày kết thúc</th>
						<th>Số lượng</th>
						<th>Điểm rèn luyện</th>
						<th>Điểm CTXH</th>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>1</td>
						<td>Vệ sinh trường</td>
						<td>20/10/2016</td>
						<td>25/10/2016</td>
						<td>60</td>
						<td>5</td>
						<td>5</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>2</td>
						<td>Chủ nhật xanh</td>
						<td>22/11/2016</td>
						<td>22/11/2016</td>
						<td>120</td>
						<td>5</td>
						<td>5</td>
					</tr>
			  	</table>
			  	<div class="btndk">
			  		<button class="btn btn-info" type="button" id="btnShowModal_dk">Đăng ký</button>
			  	</div>
			  </div>
			  <div id="huyhoatdong" class="tab-pane fade ">
			  <table class="table">
					<tr>
						<th></th>
						<th>STT</th>
						<th>Tên hoạt động</th>
						<th>Ngày bắt đầu</th>
						<th>Ngày kết thúc</th>
						<th>Số lượng</th>
						<th>Điểm rèn luyện</th>
						<th>Điểm CTXH</th>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>1</td>
						<td>Vệ sinh trường</td>
						<td>20/10/2016</td>
						<td>25/10/2016</td>
						<td>60</td>
						<td>5</td>
						<td>5</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>2</td>
						<td>Chủ nhật xanh</td>
						<td>22/11/2016</td>
						<td>22/11/2016</td>
						<td>120</td>
						<td>5</td>
						<td>5</td>
					</tr>
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