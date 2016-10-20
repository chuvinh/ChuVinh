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
		<nav class="navbar navbar-inverse">
		    <div class="container-fluid">
		        <ul class="nav navbar-nav">
		          	<li class="active"><a href="admin_qltaikhoan.jsp">Quản lý tài khoản</a></li>
			  		<li><a href="admin_qlnguoidung.jsp">Quản lý người dùng</a></li>
			  		<li><a href="trangchu.jsp">Đăng xuất</a></li>
		        </ul>
		    </div>
    	</nav>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
			 	<li><a data-toggle="tab" href="#dstaikhoan">Danh sách tài khoản</a></li>
			 	<li><a data-toggle="tab" href="#themtaikhoan">Thêm tài khoản</a></li>
			 	<li><a data-toggle="tab" href="#xoataikhoan">Xóa tài khoản</a></li>
			 	<li class="active"><a data-toggle="tab" href="#suataikhoan">Sửa tài khoản</a></li>
			</ul>
			<div class="tab-content">
			 	<div id="dstaikhoan" class="tab-pane fade">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th>STT</th>
								<th>Tên tài khoản</th>
								<th>Lần truy cập gần đây</th>
							</tr>
							<tr>
								<td>1</td>
								<td>lvv</td>
								<td>15 min ago</td>
							</tr>
							<tr>
								<td>2</td>
								<td>kll</td>
								<td>1h ago</td>
							</tr>
							<tr>
								<td>3</td>
								<td>nvv</td>
								<td>1d ago</td>
							</tr>
						 </table>
					</div>
			 	</div>
			 	<div id="themtaikhoan" class="tab-pane fade">
			 		<div class="col-md-4">
				 		<form>
						  	<div class="form-group">
						  		<label>STT:</label>
						  		<input type="text" class="form-control" id="t_STT" placeholder="Enter STT">
						  	</div>
						  	<div class="form-group">
						  		<label>Tên tài khoản:</label>
						  		<input type="text" class="form-control" id="t_namend" placeholder="Enter Name">
						  	</div>
						  	<div class="form-group">
						  		<label>Password:</label>
						  		<input type="password" class="form-control" id="t_ngaysinh" placeholder="Enter Password">
						  	</div>
						  	<div class="form-group">
						  		<label>Email:</label>
						  		<input type="text" class="form-control" id="t_email" placeholder="Enter Email">
						  	</div>
						  	<div class="form-group">
								<label>Số điện thoại:</label>
				 				<input type="text" class="form-control" id="t_SDT" placeholder="Enter Number">
				 			</div>
						 </form>
					  	<button class="btn btn-info" type="button" id="btnShowModal_themtk">Thêm tài khoản</button>
			 		</div>
			 	</div>
			 	<div id="xoataikhoan" class="tab-pane fade">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th></th>
								<th>STT</th>
								<th>Tên tài khoản</th>
								<th>Lần truy cập gần đây</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>1</td>
								<td>lvv</td>
								<td>15 min ago</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>2</td>
								<td>kll</td>
								<td>1h ago</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>3</td>
								<td>nvv</td>
								<td>1d ago</td>
							</tr>
						 </table>
					</div>
					<div class="btnxoatb">
						<button class="btn btn-info" type="button" id="btnShowModal_xoatk">Xóa tài khoản</button>
					</div>
			 	</div>
			 	<div id="suataikhoan" class="tab-pane fade in active">
			 		<div class="col-md-4">
				 		<form>
						  	<div class="form-group">
						  		<label>STT:</label>
						  		<input type="text" class="form-control" id="s_STT" placeholder="Enter STT">
						  	</div>
						  	<div class="form-group">
						  		<label>Tên tài khoản:</label>
						  		<input type="text" class="form-control" id="s_namend" placeholder="Enter Name">
						  	</div>
						  	<div class="form-group">
						  		<label>Password:</label>
						  		<input type="password" class="form-control" id="s_ngaysinh" placeholder="Enter Password">
						  	</div>
						  	<div class="form-group">
						  		<label>Email:</label>
						  		<input type="text" class="form-control" id="s_email" placeholder="Enter Email">
						  	</div>
						  	<div class="form-group">
								<label>Số điện thoại:</label>
				 				<input type="text" class="form-control" id="s_SDT" placeholder="Enter Number">
				 			</div>
						 </form>
					  	<button class="btn btn-info" type="button" id="btnShowModal_suatk">Sửa tài khoản</button>
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
				$("#btnShowModal_themtk").click(function(){
					validateText("t_STT")
					validateText("t_namend")
					validateText("t_ngaysinh")
					validateText("t_email")
					validateText("t_SDT")
					if(!validateText("t_STT")){
						return false;
					}
					if(!validateText("t_namend")){
						return false;
					}
					if(!validateText("t_ngaysinh")){
						return false;
					}
					if(!validateText("t_email")){
						return false;
					}
					if(!validateText("t_SDT")){
						return false;
					}
				});
				$("#btnShowModal_suatk").click(function(){
					validateText("s_STT")
					validateText("s_namend")
					validateText("s_ngaysinh")
					validateText("s_email")
					validateText("s_SDT")
					if(!validateText("s_STT")){
						return false;
					}
					if(!validateText("s_namend")){
						return false;
					}
					if(!validateText("s_ngaysinh")){
						return false;
					}
					if(!validateText("s_email")){
						return false;
					}
					if(!validateText("s_SDT")){
						return false;
					}
				});
			}
		);
      </script>
</body>
</html>