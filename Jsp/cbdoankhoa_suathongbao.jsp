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
			 	<li><a data-toggle="tab" href="#dsthongbao">Danh sách thông báo</a></li>
			 	<li><a data-toggle="tab" href="#themthongbao">Thêm thông báo</a></li>
			 	<li class="active"><a data-toggle="tab" href="#suathongbao">Sửa thông báo</a></li>
			 	<li><a data-toggle="tab" href="#xoathongbao">Xóa thông báo</a></li>
			</ul>
			<div class="tab-content">
			 	<div id="dsthongbao" class="tab-pane fade">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th></th>
								<th>STT</th>
								<th>Tên thông báo</th>
								<th>Trích đoạn</th>
								<th>Nội dung thông báo</th>
								<th>Insert hình</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>1</td>
								<td>Mùa hè xanh</td>
								<td>Bản tin số...</td>
								<td>Đội hình đã cố gắng kịp thời cập nhật thông tin để đưa đến các quý thầy cô các bạn đồng chí những thông tin nóng nhất mới nhất về các mặt trận Mùa Hè Xanh 2016.</td>
								<td></td>
							</tr>
						 </table>
					</div>
			 	</div>
			 	<div id="themthongbao" class="tab-pane fade">
			 		<div class="col-md-8">
				 		<form>
						  	<div class="form-group">
						  		<label>STT:</label>
						  		<input type="text" class="form-control" id="t_STT" placeholder="Enter STT">
						  	</div>
						  	<div class="form-group">
						  		<label>Tên thông báo:</label>
						  		<input type="text" class="form-control" id="t_nametb" placeholder="Enter Messages">
						  	</div>
						  	<div class="form-group">
						  		<label>Trích đoạn:</label>
						  		<input type="text" class="form-control" id="t_trichdoan" placeholder="Enter Excepts">
						  	</div>
						  	<div class="form-group">
								<label>Nội dung:</label>
				 				<textarea rows="5" cols="50" name="description" id="t_noidung" class="form-control" placeholder="Enter Content"></textarea>
						  	</div>
						  	<button class="btn btn-info" type="button" id="btnShowModal_themtb">Thêm thông báo</button>
					  	</form>					  	
			 		</div>
			 	</div>
			 	<div id="suathongbao" class="tab-pane fade in active">
			 		<div class="col-md-8">
						<form>
						  	<div class="form-group">
						  		<label>STT:</label>
						  		<input type="text" class="form-control" id="s_STT" placeholder="Enter STT">
						  	</div>
						  	<div class="form-group">
						  		<label>Tên thông báo:</label>
						  		<input type="text" class="form-control" id="s_nametb" placeholder="Enter Messages">
						  	</div>
						  	<div class="form-group">
						  		<label>Trích đoạn:</label>
						  		<input type="text" class="form-control" id="s_trichdoan" placeholder="Enter Excepts">
						  	</div>
						  	<div class="form-group">
						  		<label>Nội dung:</label>
				 				<textarea rows="5" cols="50" name="description" id="s_noidung" class="form-control" placeholder="Enter Content"></textarea>
						  	</div>
						  	<button class="btn btn-info" type="button" id="btnShowModal_suatb">Sửa thông báo</button>
				  		</form>
					</div>
			 	</div>
			 	<div id="xoathongbao" class="tab-pane fade">
			 		<div class="col-md-12">
						<table class="table">
							<tr>
								<th></th>
								<th>STT</th>
								<th>Tên thông báo</th>
								<th>Trích đoạn</th>
								<th>Nội dung thông báo</th>
								<th>Insert hình</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>1</td>
								<td>Mùa hè xanh</td>
								<td>Bản tin số...</td>
								<td>Đội hình đã cố gắng kịp thời cập nhật thông tin để đưa đến các quý thầy cô các bạn đồng chí những thông tin nóng nhất mới nhất về các mặt trận Mùa Hè Xanh 2016.</td>
								<td></td>
							</tr>
						 </table>
					</div>
					<div class="btnxoatb">
						<button class="btn btn-info" type="button" id="btnShowModal_xoatb">Xóa thông báo</button>
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
				$("#btnShowModal_themtb").click(function(){
					validateText("t_STT")
					validateText("t_nametb")
					validateText("t_trichdoan")
					validateText("t_noidung")
					if(!validateText("t_STT")){
						return false;
					}
					if(!validateText("t_nametb")){
						return false;
					}
					if(!validateText("t_trichdoan")){
						return false;
					}
					if(!validateText("t_noidung")){
						return false;
					}
				});
				$("#btnShowModal_suatb").click(function(){
					validateText("s_STT")
					validateText("s_nametb")
					validateText("s_trichdoan")
					validateText("s_noidung")
					if(!validateText("s_STT")){
						return false;
					}
					if(!validateText("s_nametb")){
						return false;
					}
					if(!validateText("s_trichdoan")){
						return false;
					}
					if(!validateText("s_noidung")){
						return false;
					}
				});
			}
		);
      </script>
</body>
</html>