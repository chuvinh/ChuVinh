<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý hoạt động đoàn</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="jquery/jquery.min.js"></script>
<link href="css/style.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap.min.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
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
					<img src="images/logo_doanthanhnien.jpg" alt="ThanhNien1"
						width="483" height="345">
				</div>
				<div class="item">
					<img src="images/logo_doanthanhnien2.jpg" alt="ThanhNien2"
						width="460" height="345">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li class="active"><a href="cbdoantruong_login.jsp">Trang
						chủ</a></li>
				<li><a href="selectcbdthd">Quản lý hoạt động</a></li>
				<li><a href="selectchidoan">Quản lý chi đoàn</a></li>
				<%
					if(session.getAttribute("username")!=null && session.getAttribute("username")!="")
					{
						String user = session.getAttribute("username").toString();
					%>
				<li><a>Welcome, <%= user%></a></li>
				<%
					} 
					%>
				<li><a href="trangchu.jsp">Đăng xuất</a></li>
			</ul>
		</div>
		</nav>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#dshoatdong">Danh
						sách hoạt động</a></li>
				<li><a data-toggle="tab" href="#themhoatdong">Thêm hoạt
						động</a></li>
				<li><a data-toggle="tab" href="#xoahoatdong">Xóa hoạt động</a></li>
				<li><a data-toggle="tab" href="#suahoatdong">Sửa hoạt động</a></li>
			</ul>
			<div class="tab-content">
				<div id="dshoatdong" class="tab-pane fade in active">
					<div class="col-md-12">
						Tên hoạt động: Vệ sinh trường<br> Đơn vị tổ chức: ĐHSPKT<br>
						Ngày bắt đầu: 20/10/2016<br> Ngày kết thúc: 25/10/2016<br>
						Số lượng: 60<br> Điểm RL: 5<br> Điểm CTXH: 10<br>
						Nội dung: Vệ sinh các khu của trường<br>
						<div class="btnduyethoatdong">
							<button class="btn btn-info" type="button"
								id="btnShowModal_duyethoatdong">Duyệt hoạt động</button>
						</div>
					</div>
				</div>
				<div id="themhoatdong" class="tab-pane fade">
					<div class="col-md-4">
						<form>
							<div class="form-group">
								<label>STT:</label> <input type="text" class="form-control"
									id="t_STT" placeholder="Enter STT">
							</div>
							<div class="form-group">
								<label>Tên hoạt động:</label> <input type="text"
									class="form-control" id="t_namehd" placeholder="Enter Active">
							</div>
							<div class="form-group">
								<label>Đơn vị tổ chức:</label> <input type="text"
									class="form-control" id="t_donvitochuc"
									placeholder="Enter Dept">
							</div>
							<div class="form-group">
								<label>Ngày bắt đầu:</label> <input type="date"
									class="form-control" id="t_ngaybatdau" placeholder="Enter Date">
							</div>
							<div class="form-group">
								<label>Ngày kết thúc:</label> <input type="date"
									class="form-control" id="t_ngayketthuc"
									placeholder="Enter Date">
							</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label>Số lượng:</label> <input type="text" class="form-control"
								id="t_soluong" placeholder="Enter Number">
						</div>
						<div class="form-group">
							<label>Điểm rèn luyện:</label> <input type="text"
								class="form-control" id="t_diemrl" placeholder="Enter Number">
						</div>
						<div class="form-group">
							<label>Điểm CTXH:</label> <input type="text" class="form-control"
								id="t_diemctxh" placeholder="Enter Number">
						</div>
						<div class="form-group">
							<label>Nội dung:</label>
							<textarea rows="5" cols="50" name="description" id="t_noidung"
								class="form-control" placeholder="Enter Content"></textarea>
						</div>
						<button class="btn btn-info" type="button"
							id="btnShowModal_themhd">Thêm hoạt động</button>
						</form>
					</div>
				</div>
				<div id="xoahoatdong" class="tab-pane fade">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th></th>
								<th>STT</th>
								<th>Tên hoạt động</th>
								<th>Đơn vị tổ chức</th>
								<th>Ngày bắt đầu</th>
								<th>Ngày kết thúc</th>
								<th>Số lượng</th>
								<th>Điểm rèn luyện</th>
								<th>Điểm CTXH</th>
								<th>Nội dung</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>1</td>
								<td>Vệ sinh trường</td>
								<td>ĐHSPK</td>
								<td>20/10/2016</td>
								<td>25/10/2016</td>
								<td>60</td>
								<td>5</td>
								<td>10</td>
								<td></td>
							</tr>
						</table>
					</div>
					<div class="btnxoatb">
						<button class="btn btn-info" type="button" id="btnShowModal_xoahd">Xóa
							hoạt động</button>
					</div>
				</div>
				<div id="suahoatdong" class="tab-pane fade">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th></th>
								<th>STT</th>
								<th>Tên hoạt động</th>
								<th>Đơn vị tổ chức</th>
								<th>Ngày bắt đầu</th>
								<th>Ngày kết thúc</th>
								<th>Số lượng</th>
								<th>Điểm rèn luyện</th>
								<th>Điểm CTXH</th>
								<th>Nội dung</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>1</td>
								<td>Vệ sinh trường</td>
								<td>ĐHSPK</td>
								<td>20/10/2016</td>
								<td>25/10/2016</td>
								<td>60</td>
								<td>5</td>
								<td>10</td>
								<td></td>
							</tr>
						</table>
					</div>
					<div class="btnsuatb">
						<a href="cbdoantruong_suahoatdong.jsp"><button
								class="btn btn-info" type="button" id="btnShowModal_suahd">Sửa
								hoạt động</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-p">Đoàn trường Đại học Sư Phạm Kỹ Thuật TP Hồ
			Chí Minh</div>
		<div class="footer-p" style="text-align: center;">Design by:
			Vịnh</div>
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
				$("#btnShowModal_themhd").click(function(){
					validateText("t_STT")
					validateText("t_namehd")
					validateText("t_donvitochuc")
					validateText("t_ngaybatdau")
					validateText("t_ngayketthuc")
					validateText("t_soluong")
					validateText("t_diemrl")
					validateText("t_diemctxh")
					validateText("t_noidung")
					if(!validateText("t_STT")){
						return false;
					}
					if(!validateText("t_namehd")){
						return false;
					}
					if(!validateText("t_donvitochuc")){
						return false;
					}
					if(!validateText("t_ngaybatdau")){
						return false;
					}
					if(!validateText("t_ngayketthuc")){
						return false;
					}
					if(!validateText("t_soluong")){
						return false;
					}
					if(!validateText("t_diemrl")){
						return false;
					}
					if(!validateText("t_diemctxh")){
						return false;
					}
					if(!validateText("t_noidung")){
						return false;
					}
				});
			}
		);
      </script>
</body>
</html>