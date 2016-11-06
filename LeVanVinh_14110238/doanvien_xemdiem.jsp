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
		<nav class="navbar navbar-inverse">
		    <div class="container-fluid">
		        <ul class="nav navbar-nav">
		          <li class="active"><a href="doanvien_login.jsp">Trang chủ</a></li>
				  <li><a href="doanvien_xemthongbao.jsp">Thông báo</a></li>
				  <li><a href="doanvien_hoatdong.jsp">Hoạt động</a></li>
				  <li><a href="doanvien_tracuu.jsp">Tra cứu</a></li>
				  <li><a href="doanvien_tinnhan.jsp">Tin nhắn</a></li>
				  <li><a href="doanvien_xemdiem.jsp">Xem điểm</a></li>
				  <li><a href="#">Thảo luận</a></li>
				  <li><a href="trangchu.jsp">Đăng xuất</a></li>
		        </ul>
		    </div>
    	</nav>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
			 	<li class="active"><a data-toggle="tab" href="#diemrl">Điểm rèn luyện</a></li>
			 	<li><a data-toggle="tab" href="#diemctxh">Điểm CTXH</a></li>
			</ul>
			<div class="tab-content">
			 	<div id="diemrl" class="tab-pane fade in active">
					<div class="col-md-12">
						<form class="form-inline">
							<label>Năm học:</label>
							<select class="form-control">
								<option>2015-2016</option>
								<option>2014-2015</option>
								<option>2013-2014</option>
								<option>2012-2013</option>
							</select>
							<label>Học kỳ: </label>
							<select class="form-control">
								<option>Học kỳ 1</option>
								<option>Học kỳ 2</option>
								<option>Học kỳ 3</option>
							</select>
							<button class="btn btn-info" id="xemdiem">Xem điểm</button>
						</form>
						<div class="diem">
							<label>Điểm đã tổng kết: 10, Xếp loại: Yếu</label>
						</div>
						<table class="table">
							<tr>
								<th>STT</th>
								<th>Nội dung và ý kiến đánh giá</th>
								<th>Điểm rèn luyện</th>
								<th>Người nhập</th>
							</tr>
							<tr>
								<td>1</td>
								<td>Điểm trung bình học kỳ xếp loại Giỏi</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>2</td>
								<td>Điểm trung bình học kỳ xếp loại Khá</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>1</td>
								<td>Điểm trung bình học kỳ xếp loại Trung bình</td>
								<td>10</td>
								<td></td>
							</tr>
							<tr>
								<td>1</td>
								<td>Điểm trung bình học kỳ xếp loại Trung bình yếu</td>
								<td></td>
								<td></td>
							</tr>
						 </table>
					</div>
			 	</div>
			 	<div id="diemctxh" class="tab-pane fade">
					<label>Các hoạt động đã đăng ký - Tổng điểm đã tham gia: 25</label>
					<table class="table">
						<tr>
							<th>STT</th>
							<th>Mã hoạt động</th>
							<th>Nhóm hoạt động</th>
							<th>Tên hoạt động</th>
							<th>Thời gian</th>
							<th>Điểm</th>
							<th>Đơn vị tổ chức</th>
						</tr>
						<tr>
							<td>1</td>
							<td>003102_11_03</td>
							<td>Bảo vệ môi trường</td>
							<td>Vệ sinh công sở</td>
							<td>10/12/2014-30/03/2015</td>
							<td>5</td>
							<td>ĐHSPKT</td>
						</tr>
						<tr>
							<td>2</td>
							<td>006206_18_01</td>
							<td>Thi đấu văn hóa</td>
							<td>Đá bóng</td>
							<td>20/11/2015-15/12/2015</td>
							<td>5</td>
							<td>Khoa CNTT</td>
						</tr>
						<tr>
							<td>3</td>
							<td>002104_19_05</td>
							<td>Lao động</td>
							<td>Vệ sinh khu C, D</td>
							<td>05/12/2015-27/12/2015</td>
							<td>5</td>
							<td>Khoa Điện</td>
						</tr>
						<tr>
							<td>4</td>
							<td>002104_19_05</td>
							<td>Phong trào</td>
							<td>Chủ nhật xanh</td>
							<td>13/03/2016-13/03/2016</td>
							<td>10</td>
							<td>Khoa CNTT</td>
						</tr>
					</table>
			 	</div>
			 	
			</div>
		</div>
	</div>
	<div class="navbar navbar-default navbar-fixed-bottom">
			<p class="navbar-text navbar-center">Đoàn trường Đại học Sư Phạm Kỹ Thuật TP Hồ Chí Minh</p>
			<p class="navbar-text">Design by: Vịnh</p>
	</div>
</body>
</html>