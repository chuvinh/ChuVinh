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
			 	<li class="active"><a data-toggle="tab" href="#dstinnhan">Danh sách tin nhắn</a></li>
			 	<li><a data-toggle="tab" href="#guitinnhan">Gửi tin nhắn</a></li>
			</ul>
			<div class="tab-content">
			 	<div id="dstinnhan" class="tab-pane fade in active">
			 		<table class="table">
					<tr>
						<th>STT</th>
						<th>Tên tin nhắn</th>
						<th>Người gửi</th>
						<th>Nội dung</th>
					</tr>
					<tr>
						<td>1</td>
						<td>Cập nhật điểm CTXH</td>
						<td>Cán bộ đoàn khoa</td>
						<td>Đã cập nhật lại điểm CTXH, mời các em vào kiểm tra lại.</td>
					</tr>
				 </table>
			 		<div class="btncapnhattinnhan">
						<button class="btn btn-info" id="capnhattinnhan">Refesh</button>
					</div>
			 	</div>
			 	<div id="guitinnhan" class="tab-pane fade">
			 		<div class="col-md-8">
			 			<form>
				 			<div class="form-group">
					 			<label>Người nhận:</label>
					 			<input type="text" class="form-control" id="nguoinhan" placeholder="To">
				 			</div>
				 			<div class="form-group">
					 			<label>Tiêu đề:</label>
					 			<input type="text" class="form-control" id="tieude" placeholder="Enter Subject">
					 		</div>
					 		<div class="form-group">
					 			<label>Email:</label>
					 			<input type="text" class="form-control" id="email" placeholder="Enter Email">
					 		</div>
					 		<div class="form-group">
					 			<label>Nội dung:</label>
					 			<textarea rows="5" cols="50" name="description" id="noidung" class="form-control" placeholder="Enter Content"></textarea>
					 		</div>
					 		<button class="btn btn-info" type="button" id="btnShowModal_tn">Gửi tin nhắn</button>
			 			</form>
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
				$("#btnShowModal_tn").click(function(){
					validateText("nguoinhan")
					validateText("tieude")
					validateText("email")
					validateText("noidung")
					if(!validateText("nguoinhan")){
						return false;
					}
					if(!validateText("tieude")){
						return false;
					}
					if(!validateText("email")){
						return false;
					}
					if(!validateText("noidung")){
						return false;
					}
				});
			}
		);
      </script>
</body>
</html>