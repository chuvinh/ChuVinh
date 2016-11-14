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
	</div>
	<marquee>Hệ thống quản lý hoạt động đoàn viên đại học SPKT Tp.HCM</marquee>
	<div class="menu_tab_content">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-lg-3">
						<img src="images/chibi.png">
					</div>
					<div class="col-lg-9">
					<%
						if(session.getAttribute("username")!=null && session.getAttribute("username")!="")
						{
						String user = session.getAttribute("username").toString();
					%>
						<h3>Chào mừng <%= user%> 
					<%
						} 
					%>  đến với Hệ thống Quản lý hoạt động đoàn sinh viên!</h3>
						Chúng tôi mong rằng hệ thống sẽ giúp bạn tiếp cận gần hơn với các hoạt động đoàn tại trường, cũng như cải thiện chất lượng hoạt động trong các tổ chức Đoàn - Hội của trường Đại học SPKT TP.HCM.
					</div>
				</div>
			</div>
		</div>
</body>
</html>