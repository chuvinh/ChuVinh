<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3307/qlhdd" user="root" password="12345678"/>
	<div class="containt">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
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
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="modal" id="loginModal" tabindex="-1">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button class="close" data-dismiss="modal"></button>
									<h4 class="modal-title">Login</h4>
								</div>
								<div class="modal-body">
									<form>
										<input checked="checked" name="doanvien" type="radio" value="doanvien" id="check_dv" />Đoàn viên
										<input name="doanvien" type="radio" value="cbdoankhoa" id="check_cbdk" />Cán bộ đoàn khoa
										<input name="doanvien" type="radio" value="cbdoantruong" id="check_cbdt" />Cán bộ đoàn trưởng
										<input name="doanvien" type="radio" value="admin" id="check_admin" />Admin
									</form>
									<form class="form-horizontal" method="post">
									<sql:query var="items" sql="SELECT * FROM users"/>
						              	<div class="form-group">
						                	<label class="control-label col-md-7 " style="text-align: left; margin-bottom: 5px;">Tên đăng nhập:</label>
						                	<div class="col-md-12">
						                  		<input type="text" class="form-control" placeholder="Enter UserName " id="inputUsername">
						                	</div>
						              	</div>
						              	<div class="form-group">
							                <label class="control-label col-md-12" style="text-align: left; margin-bottom: 5px;">Mật khẩu:</label>
							                <div class="col-md-12">
							                  	<input type="password" class="form-control" placeholder="Enter Password " id="inputPassword">
							                </div>
						              	</div>
						          	</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-success" id="btnShowModal">Login</button>
				       		 		<button type="button" class="btn btn-default" id="btnHideModal">Cancel</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
				<marquee>Hệ thống quản lý hoạt động đoàn viên đại học SPKT Tp.HCM</marquee>
		<div class="menu_tab_content">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-lg-3">
						<img src="images/chibi.png">
					</div>
					<div class="col-lg-9">
						<h3>Chào mừng bạn đến với Hệ thống Quản lý hoạt động đoàn sinh viên!</h3>
						Chúng tôi mong rằng hệ thống sẽ giúp bạn tiếp cận gần hơn với các hoạt động đoàn tại trường, cũng như cải thiện chất lượng hoạt động trong các tổ chức Đoàn - Hội của trường Đại học SPKT TP.HCM.
						<br>Đăng nhập để tiếp tục làm việc !
						<h3><button class="btn btn-success" data-target="#loginModal" data-toggle="modal">Đăng nhập ngay</button></h3>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
		function Login(){
	        var flag = true;
	        var dv = document.getElementById('check_dv').checked;
	        var cbdk = document.getElementById('check_cbdk').checked;
	        var cbdt = document.getElementById('check_cbdt').checked;
	        var ad = document.getElementById('check_admin').checked;
	        if(dv == true && cbdk == false && cbdt == false && ad == false){
	          window.location = "doanvien_login.jsp";
	        }
	        if(dv == false && cbdk == true && cbdt == false && ad == false){
	          window.location = "cbdoankhoa_login.jsp";
	        }
	        if(dv == false && cbdk == false && cbdt == true && ad == false){
		          window.location = "cbdoantruong_login.jsp";
		    }
	        if(dv == false && cbdk == false && cbdt == false && ad == true){
		          window.location = "admin_login.jsp";
		    }
	        return flag;
	      }
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
				$("#btnHideModal").click(function(){
					$("#loginModal").modal("hide");
				});
				$("#btnShowModal").click(function(){
					validateText("inputUsername")
					validateText("inputPassword")
					if(!validateText("inputUsername")){
						return false;
					}
					if(!validateText("inputPassword")){
						return false;
					}
					Login()
				});
			}
		);
      </script>
</body>
</html>