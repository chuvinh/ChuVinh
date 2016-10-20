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
		          <li class="active"><a href="cbdoantruong_login.jsp">Trang chủ</a></li>
				  <li><a href="cbdoantruong_qlhoatdong.jsp">Quản lý hoạt động</a></li>
				  <li><a href="cbdoantruong_qlchidoan.jsp">Quản lý chi đoàn</a></li>
				  <li><a href="trangchu.jsp">Đăng xuất</a></li>
		        </ul>
		    </div>
    	</nav>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
			 	<li><a data-toggle="tab" href="#dschidoan">Danh sách chi đoàn</a></li>
			 	<li><a data-toggle="tab" href="#themchidoan">Thêm chi đoàn</a></li>
			 	<li><a data-toggle="tab" href="#xoachidoan">Xóa chi đoàn</a></li>
			 	<li class="active"><a data-toggle="tab" href="#suachidoan">Sửa chi đoàn</a></li>
			</ul>
			<div class="tab-content">
			 	<div id="dschidoan" class="tab-pane fade">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th>Tên chi đoàn</th>
								<th>Tên cán bộ</th>
								<th>Số điện thoại</th>
								<th>Email</th>
							</tr>
							<tr>
								<td>141101</td>
								<td>Nguyễn B</td>
								<td>012345678</td>
								<td>nb@gmail.com</td>
							</tr>
							<tr>
								<td>141102</td>
								<td>Trần A</td>
								<td>090920312</td>
								<td>ta@gmail.com</td>
							</tr>
							<tr>
								<td>141103</td>
								<td>Trà T</td>
								<td>09283712</td>
								<td>tt@gmail.com</td>
							</tr>
						 </table>
					</div>
			 	</div>
			 	<div id="themchidoan" class="tab-pane fade">
			 		<div class="col-md-4">
				 		<form>
						  	<div class="form-group">
						  		<label>Tên chi đoàn:</label>
						  		<input type="text" class="form-control" id="t_namecd" placeholder="Enter Name">
						  	</div>
						  	<div class="form-group">
						  		<label>Tên cán bộ đoàn:</label>
						  		<input type="text" class="form-control" id="t_namecbd" placeholder="Enter Name">
						  	</div>
						  	<div class="form-group">
						  		<label>Số điện thoại:</label>
						  		<input type="text" class="form-control" id="t_sdt" placeholder="Enter Phone Number">
						  	</div>
						  	<div class="form-group">
								<label>Email:</label>
				 				<input type="text" class="form-control" id="t_email" placeholder="Enter Email">
						  	</div>
						  	<button class="btn btn-info" type="button" id="btnShowModal_themcd">Thêm chi đoàn</button>
						 </form>
					</div>
			 	</div>
			 	<div id="xoachidoan" class="tab-pane fade">
			 		<div class="col-md-12">
						<table class="table">
							<tr>
								<th></th>
								<th>Tên chi đoàn</th>
								<th>Tên cán bộ</th>
								<th>Số điện thoại</th>
								<th>Email</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>141101</td>
								<td>Nguyễn B</td>
								<td>012345678</td>
								<td>nb@gmail.com</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>141102</td>
								<td>Trần A</td>
								<td>090920312</td>
								<td>ta@gmail.com</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>141103</td>
								<td>Trà T</td>
								<td>09283712</td>
								<td>tt@gmail.com</td>
							</tr>
						 </table>
					</div>
					<div class="btnxoatb">
						<button class="btn btn-info" type="button" id="btnShowModal_xoacd">Xóa chi đoàn</button>
					</div>
			 	</div>
			 	<div id="suachidoan" class="tab-pane fade in active">
			 		<div class="col-md-4">
				 		<form>
						  	<div class="form-group">
						  		<label>Tên chi đoàn:</label>
						  		<input type="text" class="form-control" id="s_namecd" placeholder="Enter Name">
						  	</div>
						  	<div class="form-group">
						  		<label>Tên cán bộ đoàn:</label>
						  		<input type="text" class="form-control" id="s_namecbd" placeholder="Enter Name">
						  	</div>
						  	<div class="form-group">
						  		<label>Số điện thoại:</label>
						  		<input type="text" class="form-control" id="s_sdt" placeholder="Enter Phone Number">
						  	</div>
						  	<div class="form-group">
								<label>Email:</label>
				 				<input type="date" class="form-control" id="s_email" placeholder="Enter Email">
						  	</div>
						  	<button class="btn btn-info" type="button" id="btnShowModal_suacd">Sửa chi đoàn</button>
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
				$("#btnShowModal_themcd").click(function(){
					validateText("t_namecd")
					validateText("t_namecbd")
					validateText("t_sdt")
					validateText("t_email")
					if(!validateText("t_namecd")){
						return false;
					}
					if(!validateText("t_namecbd")){
						return false;
					}
					if(!validateText("t_sdt")){
						return false;
					}
					if(!validateText("t_email")){
						return false;
					}
				});
				$("#btnShowModal_suacd").click(function(){
					validateText("s_namecd")
					validateText("s_namecbd")
					validateText("s_sdt")
					validateText("s_email")
					if(!validateText("s_namecd")){
						return false;
					}
					if(!validateText("s_namecbd")){
						return false;
					}
					if(!validateText("s_sdt")){
						return false;
					}
					if(!validateText("s_email")){
						return false;
					}
				});
			}
		);
      </script>
</body>
</html>