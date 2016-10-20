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
				  <li><a href="trangchu.jsp">Đăng xuất</a></li>
		        </ul>
		    </div>
    	</nav>
		<div class="menu_tab_content">
					<ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#xemtt_dv">Thông tin cá nhân</a></li>
		  <li ><a data-toggle="tab" href="#capnhattt_dv">Cập nhật thông tin</a></li>
		</ul>
		<div class="tab-content">
		  <div id="xemtt_dv" class="tab-pane fade in active">
		  	<table class="table">
					<tr>
						<th>MSSV</th>
						<th>Tên đoàn viên</th>
						<th>Ngày sinh</th>
						<th>Giới tính</th>
						<th>CMND</th>
						<th>Khoa</th>
						<th>Lớp</th>
						<th>Ngày vào đoàn</th>
						<th>Địa chỉ</th>
						<th>Chức vụ</th>
					</tr>
					<tr>
						<td>14110238</td>
						<td>Lê Văn Vịnh</td>
						<td>15/03/1996</td>
						<td>Nam</td>
						<td>221421105</td>
						<td>CNTT</td>
						<td>141101C</td>
						<td>2013</td>
						<td>Lê Văn Việt, Quận 9</td>
						<td>Đoàn viên</td>
					</tr>
			 </table>
		  </div>
		  <div id="capnhattt_dv" class="tab-pane fade ">
		 	<div class="col-md-4">
		 		<form>
				  	<div class="form-group">
				  		<label>MSSV:</label>
				  		<input type="text" class="form-control" id="MSSV" placeholder="Enter MSSV">
				  	</div>
				  	<div class="form-group">
				  		<label>Tên đoàn viên:</label>
				  		<input type="text" class="form-control" id="namedv" placeholder="Enter Name">
				  	</div>
				  	<div class="form-group">
				  		<label>Ngày sinh:</label>
				  		<input type="date" class="form-control" id="ngaysinh" placeholder="Enter BirthDay">
				  	</div>
				  	<div class="form-group">
				  		<label>Giới tính:</label>
				  		<input type="text" class="form-control" id="gioitinh" placeholder="Enter Sex">
				  	</div>
				  	<div class="form-group">
				  		<label>CMND:</label>
				  		<input type="text" class="form-control" id="CMND" placeholder="Enter CMND">
				  	</div>
			  	</form>
		 	</div>
			<div class="col-md-4">
				<form>
					<div class="form-group">
			  		<label>Khoa:</label>
			  		<input type="text" class="form-control" id="khoa" placeholder="Enter Dept">
				  	</div>
				  	<div class="form-group">
				  		<label>Lớp: </label>
				  		<input type="text" class="form-control" id="lop" placeholder="Enter Class">
				  	</div>
				  	<div class="form-group">
				  		<label>Ngày vào đoàn:</label>
				  		<input type="date" class="form-control" id="ngayvaodoan" placeholder="Enter Date">
				  	</div>
				  	<div class="form-group">
				  		<label>Địa chỉ: </label>
				  		<input type="text" class="form-control" id="diachi" placeholder="Enter Address">
				  	</div>
				</form>
			</div>
			<div class="col-md-4">
				<img src="images/logo_spkt.jpg" alt="logo_spkt" width="300px" height="350px">
			</div>
			<div class="btncapnhat">
				<button class="btn btn-info" type="button" id="btnShowModal_tracuu">Cập nhật</button>
			</div>
		  </div>
		</div>		
		</div>
	</div>
	<script type="text/javascript">
		function validateText(id)
		{
			if($("#"+id).val()==null || $("#"+id).val()=="")
			{
				var div=$("#"+id).closest("div");
				div.removeClass("has-error");
				$("#glypcn"+id).remove();
				div.addClass("has-error has-feedback");
				div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-remove form-control-feedback"></span>');
				return false;
			}
			else
			{
				var div=$("#"+id).closest("div");
				div.removeClass("has-error");
				div.addClass("has-succes has-feedback");
				$("#glypcn"+id).remove();
				div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-ok form-control-feedback"></span>');
				return true;
			}
		}
		$(document).ready(
			function(){
				$("#btnShowModal_tracuu").click(function(){
					validateText("MSSV")
					validateText("namedv")
					validateText("ngaysinh")
					validateText("CMND")
					validateText("gioitinh")
					validateText("khoa")
					validateText("lop")
					validateText("ngayvaodoan")
					validateText("diachi")
					if(!validateText("MSSV")){
						return false;
					}
					if(!validateText("namedv")){
						return false;
					}
					if(!validateText("ngaysinh")){
						return false;
					}
					if(!validateText("CMND")){
						return false;
					}
					if(!validateText("gioitinh")){
						return false;
					}
					if(!validateText("khoa")){
						return false;
					}
					if(!validateText("lop")){
						return false;
					}
					if(!validateText("ngayvaodoan")){
						return false;
					}
					if(!validateText("diachi")){
						return false;
					}
				});
			}
		);
      </script>
</body>
</html>