<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
		          	<li><a href="admin_qltaikhoan.jsp">Quản lý tài khoản</a></li>
			  		<li class="active"><a href="admin_qlnguoidung.jsp">Quản lý người dùng</a></li>
			  		<li><a href="trangchu.jsp">Đăng xuất</a></li>
		        </ul>
		    </div>
    	</nav>
		<div class="menu_tab_content">
			<ul class="nav nav-tabs">
			 	<li class="active"><a data-toggle="tab" href="#dsnguoidung">Danh sách người dùng</a></li>
			 	<li><a data-toggle="tab" href="#themnguoidung">Thêm người dùng</a></li>
			 	<li><a data-toggle="tab" href="#xoanguoidung">Xóa người dùng</a></li>
			 	<li><a data-toggle="tab" href="#suanguoidung">Sửa thông tin người dùng</a></li>
			</ul>
			<div class="tab-content">
			 	<div id="dsnguoidung" class="tab-pane fade in active">
					<div class="col-md-12">
						<sql:query var="items" sql="SELECT Username,Pass FROM users"/>
						  	<table class="table">
						  		<tr>
									<th>UserName</th>
									<th>Password</th>
								</tr>
									<c:forEach items="${items.rowsByIndex}" var="row" >
								<tr>
									<c:forEach items="${row}" var="col">
										<td>${col}</td>
									</c:forEach>							
								</tr>
									</c:forEach>
							</table>
					</div>
			 	</div>
			 	<div id="themnguoidung" class="tab-pane fade">
			 		<div class="col-md-4">
				 		<form>
						  	<div class="form-group">
						  		<label>MSSV:</label>
						  		<input type="text" class="form-control" id="t_MSSV" placeholder="Enter MSSV">
						  	</div>
						  	<div class="form-group">
						  		<label>Tên đoàn viên:</label>
						  		<input type="text" class="form-control" id="t_namend" placeholder="Enter Name">
						  	</div>
						  	<div class="form-group">
						  		<label>Ngày sinh:</label>
						  		<input type="date" class="form-control" id="t_ngaysinh" placeholder="Enter Date">
						  	</div>
						  	<div class="form-group">
								<label>CMND:</label>
				 				<input type="text" class="form-control" id="t_CMND" placeholder="Enter CMND">
						  	</div>
						  	<div class="form-group">
								<label>Giới tính:</label>
				 				<input type="date" class="form-control" id="t_gioitinh" placeholder="Enter Sex">
						  	</div>
						  	<div class="form-group">
						  		<label>Email:</label>
						  		<input type="text" class="form-control" id="t_email" placeholder="Enter Email">
						  	</div>
					</div>
					<div class="col-md-4">
						  	<div class="form-group">
						  		<label>Số điện thoại:</label>
						  		<input type="text" class="form-control" id="t_sdt" placeholder="Enter Number">
						  	</div>
						  	<div class="form-group">
						  		<label>Khoa:</label>
						  		<input type="text" class="form-control" id="t_khoa" placeholder="Enter Dept">
						  	</div>
						  	<div class="form-group">
						  		<label>Lớp:</label>
				 				<input type="text" class="form-control" id="t_lop" placeholder="Enter Class">
						  	</div>
						  	<div class="form-group">
						  		<label>Ngày vào đoàn:</label>
				 				<input type="date" class="form-control" id="t_ngayvaodoan" placeholder="Enter Date">
						  	</div>
						  	<div class="form-group">
						  		<label>Địa chỉ:</label>
				 				<input type="text" class="form-control" id="t_diachi" placeholder="Enter Address">
						  	</div>
						  	<br><button class="btn btn-info" type="button" id="btnShowModal_themnd">Thêm người dùng</button>
					  	</form>
			 		</div>
			 	</div>
			 	<div id="xoanguoidung" class="tab-pane fade">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<th></th>
								<th>MSSV</th>
								<th>Tên</th>
								<th>Giới tính</th>
								<th>Ngày sinh</th>
								<th>Email</th>
								<th>CMND</th>
								<th>Điện thoại</th>
								<th>Lớp</th>
								<th>Ngày vào đoàn</th>
								<th>Địa chỉ</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>14110236</td>
								<td>Lê Văn A</td>
								<td>Nam</td>
								<td>20/10/1996</td>
								<td>la@gmail.com</td>
								<td>221421103</td>
								<td>01649293</td>
								<td>CNTT</td>
								<td>141102</td>
								<td>2012</td>
								<td>Thủ Đức</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>14110239</td>
								<td>Nguyễn Thị B</td>
								<td>Nữ</td>
								<td>26/12/1996</td>
								<td>nb@gmail.com</td>
								<td>221421104</td>
								<td>0928292</td>
								<td>Điện</td>
								<td>141103</td>
								<td>2011</td>
								<td>Thủ Đức</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>14110238</td>
								<td>Lê Văn Vịnh</td>
								<td>Nam</td>
								<td>15/03/1996</td>
								<td>lvv@gmail.com</td>
								<td>221421105</td>
								<td>01685699420</td>
								<td>CNTT</td>
								<td>141101</td>
								<td>2013</td>
								<td>Quận 9</td>
							</tr>
						 </table>
					</div>
					<div class="btnxoatb">
						<button class="btn btn-info" type="button" id="btnShowModal_xoand">Xóa người dùng</button>
					</div>
			 	</div>
			 	<div id="suanguoidung" class="tab-pane fade">
			 		<div class="col-md-12">
						<table class="table">
							<tr>
								<th></th>
								<th>MSSV</th>
								<th>Tên</th>
								<th>Giới tính</th>
								<th>Ngày sinh</th>
								<th>Email</th>
								<th>CMND</th>
								<th>Điện thoại</th>
								<th>Lớp</th>
								<th>Ngày vào đoàn</th>
								<th>Địa chỉ</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>14110236</td>
								<td>Lê Văn A</td>
								<td>Nam</td>
								<td>20/10/1996</td>
								<td>la@gmail.com</td>
								<td>221421103</td>
								<td>01649293</td>
								<td>CNTT</td>
								<td>141102</td>
								<td>2012</td>
								<td>Thủ Đức</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>14110239</td>
								<td>Nguyễn Thị B</td>
								<td>Nữ</td>
								<td>26/12/1996</td>
								<td>nb@gmail.com</td>
								<td>221421104</td>
								<td>0928292</td>
								<td>Điện</td>
								<td>141103</td>
								<td>2011</td>
								<td>Thủ Đức</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>14110238</td>
								<td>Lê Văn Vịnh</td>
								<td>Nam</td>
								<td>15/03/1996</td>
								<td>lvv@gmail.com</td>
								<td>221421105</td>
								<td>01685699420</td>
								<td>CNTT</td>
								<td>141101</td>
								<td>2013</td>
								<td>Quận 9</td>
							</tr>
						 </table>
					</div>
					<div class="btnsuatb">
						<a href="admin_suanguoidung.jsp"><button class="btn btn-info" type="button" id="btnShowModal_suand">Sửa hoạt động</button></a>
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
				$("#btnShowModal_themnd").click(function(){
					validateText("t_MSSV")
					validateText("t_namend")
					validateText("t_ngaysinh")
					validateText("t_CMND")
					validateText("t_gioitinh")
					validateText("t_email")
					validateText("t_sdt")
					validateText("t_khoa")
					validateText("t_lop")
					validateText("t_ngayvaodoan")
					validateText("t_diachi")
					if(!validateText("t_MSSV")){
						return false;
					}
					if(!validateText("t_namend")){
						return false;
					}
					if(!validateText("t_ngaysinh")){
						return false;
					}
					if(!validateText("t_CMND")){
						return false;
					}
					if(!validateText("t_gioitinh")){
						return false;
					}
					if(!validateText("t_email")){
						return false;
					}
					if(!validateText("t_sdt")){
						return false;
					}
					if(!validateText("t_khoa")){
						return false;
					}
					if(!validateText("t_lop")){
						return false;
					}
					if(!validateText("t_ngayvaodoan")){
						return false;
					}
					if(!validateText("t_diachi")){
						return false;
					}
				});
			}
		);
      </script>
</body>
</html>