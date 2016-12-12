<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>Login</title>
</head>
<body>
        <form method="post" id="loginform" action="loginservlet">
        Username:<input type="text" name="userName" id="inputUsername" /><br/>
        Password:<input type="password" name="password" id="inputPassword"/><br/>
        <input type="submit" value="login" />
        </form>
         <script>
		$(document).ready(
				function() {
					$("#loginform").submit(function(evt) {
						evt.preventDefault();

						var username = $("#inputUsername").val();
						var password = $("#inputPassword").val();

						var data = {
							a : username,
							b : password
						};

						$.post("loginservlet", data).done(function(text) {

							if (text === "dv") {
								window.location.href = "doanvien_login.jsp";
							} else {
								if (text === "cbdk")
									window.location.href = "cbdoankhoa_login.jsp";
								else{
									if (text === "cbdt")
										window.location.href = "cbdoantruong_login.jsp";
									else{
										if (text === "ad")
											window.location.href = "admin_login.jsp";
									}
								}
							}
						});
					});
				});
		</script>
</body>
</html>